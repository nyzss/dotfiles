#!/bin/bash
slurp | grim -g - $HOME/Pictures/Screenshots/$(date +'%F_%H:%M:%S_zheng.png') && sleep 3 &&
	wl-copy < "$HOME/Pictures/Screenshots/$(date +'%F_%H:%M:%S_zheng.png')"
