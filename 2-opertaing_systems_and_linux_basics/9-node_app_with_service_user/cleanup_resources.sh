#!/usr/bin/env bash

app_name="node"
user="myapp"
group="myapp"
myapp_dir="/opt/myapp"

tar_file="bootcamp-node-envvars-project-1.0.0.tgz"
package_dir="package"

# Find and kill node process
pid=$(pgrep -u myapp -f server.js)

if [[ -n "$pid" ]]; then
    kill "$pid"
    echo "Killed PID: $pid"
else
    echo "No process found. No action"
fi

# Find and delete myapp user
if getent passwd "$user" > /dev/null 2>&1; then
  echo "Deleting user: $user"
  sudo userdel "$user"
else
  echo "No user to delete"
fi

# Find and delete myapp group
if getent group "$group" > /dev/null 2>&1; then
  echo "Deleting group: $group"
  sudo groupdel "$group"
else
  echo "No group to delete"
fi

if [[ -e "$tar_file" ]]; then
  echo "Deleting $tar_file"
  rm ./"$tar_file"
fi

if [[ -e "$package_dir" ]]; then
  echo "Deleting $package_dir"
  rm -rf ./"$package_dir"
fi

if [[ -e "$myapp_dir" ]]; then
  echo "Deleting $myapp_dir"
  sudo rm -rf "$myapp_dir"
fi
