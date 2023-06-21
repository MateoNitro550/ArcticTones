#!/bin/bash

rofi_command="rofi -theme ~/.config/rofi/modules/polybar/main/themes/polybar.rasi"

# Options
network=" Network Options"
lock=" Lock"
settings=" Settings                     "
powerSettings=" Power Settings               "

# Variable passed to rofi
options="$network\n$lock\n$settings\n$powerSettings"

chosen="$(echo -e "$options" | $rofi_command -p "System" -dmenu -selected-row 0)"

case $chosen in
    $network)
      nm-connection-editor
      ;;
    $lock)
      GLITCHICON=/opt/glitchlock/stop.png /opt/glitchlock/glitchlock
      ;;
    $settings)
      mate-control-center
      ;;
    $powerSettings)
      ~/.config/rofi/modules/polybar/powerOptions/powerOptions.sh
      ;;
esac
