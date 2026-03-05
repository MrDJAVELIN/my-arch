#!/bin/bash

layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

case "$layout" in
  English*) echo "ENG" ;;
  Ukrainian*) echo "UA" ;;
  Russian*) echo "RU" ;;
  *) echo "$layout" ;;
esac