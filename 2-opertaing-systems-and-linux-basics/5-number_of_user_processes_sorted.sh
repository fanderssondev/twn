#!/usr/bin/env bash


read -p "How many processes do you want to see?: " number

echo

ps ux --sort=-%cpu | head -n $(($number + 1))

