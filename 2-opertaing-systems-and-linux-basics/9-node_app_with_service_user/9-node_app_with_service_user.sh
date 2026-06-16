#!/usr/bin/env bash
set -euo pipefail


APP_DIR="/opt/myapp"
LOG_DIR="$APP_DIR/logs"

printf "Downloading node project...\n\n"
curl -OL#C - https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz

printf "Extracting files...\n\n"
tar -xvf bootcamp-node-envvars-project-1.0.0.tgz

sudo useradd -rs /usr/sbin/nologin myapp

cd package

printf 'Running `npm install`\n\n'
# Suppress stdout but not stderr with `>`. `&>` suppresses both
npm install > /dev/null
cd ..
sudo mkdir -p "$LOG_DIR"
sudo cp -r ./package/. "$APP_DIR"/
sudo chown -R myapp:myapp package "$APP_DIR"

cd "$APP_DIR"

printf "Starting node server...\n\n"
sudo -u myapp env \
  APP_ENV=dev \
  DB_USER=myuser \
  DB_PWD=mysecret \
  LOG_DIR="$LOG_DIR" \
  node server.js &
sudo_pid=$!


for _ in {1..50}; do
    pid=$(pgrep -u myapp -f server.js || true)
    [[ -n "$pid" ]] && break
    sleep 0.2
done
[[ -z "${pid:-}" ]] && { echo "node didn't start" >&2; exit 1; }


for _ in {1..50}; do
    port=$(sudo ss -ltpn | awk -v pid="$pid" '
        $0 ~ "pid=" pid { split($4, p, ":"); print p[length(p)]; exit }')
    [[ -n "$port" ]] && break
    sleep 0.2
done

[[ -z "$port" ]] && { echo "Server didn't bind a port in time" >&2; exit 1; }

echo "Port: $port"
echo "PID: $pid"
