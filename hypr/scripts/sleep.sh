#!/bin/bash

swayidle -w \
timeout 200 \ 'gtklock -i' \
timeout 300 'hyprctl dispatch dpms off' \
resume 'hyprctl dispatch dpms on' \
timeout 600 'systemctl suspend'
