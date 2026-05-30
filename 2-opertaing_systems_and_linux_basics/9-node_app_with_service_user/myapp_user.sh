#!/usr/bin/env bash


myapp_dir="/opt/myapp"

sudo mkdir -p "$myapp_dir"

sudo cp /home/fredrik/twn/2-opertaing_systems_and_linux_basics/9-node_app_with_service_user/9-node_app_with_service_user.sh "$myapp_dir"

sudo useradd -rs /usr/sbin/nologin myapp

sudo chown -R myapp "$myapp_dir"

sudo cd "$myapp_dir"

sudo chmod 0744 "$myapp_dir"/9-node_app_with_service_user.sh

sudo -u myapp "$myapp_dir"/9-node_app_with_service_user.sh --log-dir "$myapp_dir"

