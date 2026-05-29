#!/usr/bin/env bash
set -euo pipefail


if [[ $# -ne 2 ]]; then
    echo "Incorrect args"
    echo "Usage: $0 --log-dir </path/to/dir/>"
    exit 1
fi

export LOG_DIR="$2"

printf "Downloading node project...\n\n"
curl -OL#C - https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz

printf "Extracting files...\n\n"
tar -xvf bootcamp-node-envvars-project-1.0.0.tgz

printf "Setting environment variables...\n\n"
export APP_ENV=dev
export DB_USER=myuser
export DB_PWD=mysecret

printf "cd ./package/\n\n"
cd package

printf 'Running `npm install`\n\n'
# Suppress stdout but not stderr with `>`. `&>` suppresses both
npm install > /dev/null

printf "Starting node server...\n\n"
node server.js &
pid=$!

while true; do
    port=$(
    ss -ltpn |
        awk -v pid="$pid" '
            $0 ~ "pid=" pid {
            split($4, port, ":")
            print port[length(port)]
            exit
        }
        '
    )

    if [[ -n "$port" ]]; then
        break
    fi

    sleep 0.2
done

echo "Port: $port"
echo "PID: $pid"
