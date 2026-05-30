#!/usr/bin/env bash


pid=$(
    ss -ltpn | grep node | 
        awk '{
            split($6, m, ",")
            split(m[2], pid, "=")
            print pid[2]
        }'
)

if [[ -n "$pid" ]]; then
    kill -9 "$pid"
    echo "Killed PID: $pid"
else
    echo "No process found. No action"
fi

