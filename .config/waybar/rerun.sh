#!/bin/bash

CONFIG_FILES="$HOME/dotfiles/.config/waybar/config.jsonc $HOME/dotfiles/.config/waybar/style.css"

trap "killall waybar" EXIT

while true; do
    waybar &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
