#!/bin/bash

rofi_command="rofi -theme ~/.config/rofi/modules/polybar/powerOptions/themes/powerOptions.rasi"

# Options
lock=" Lock"
logout=" Logout"
sleep=" Sleep"
shutdown=" Shutdown"
restart=" Restart"
back=" Back                         "

# Variable passed to rofi
options="$lock\n$logout\n$sleep\n$shutdown\n$restart\n$back"

chosen="$(echo -e "$options" | $rofi_command -p "Power Options" -dmenu -selected-row 0)"

case $chosen in
    $lock)
        GLITCHICON=/opt/glitchlock/stop.png /opt/glitchlock/glitchlock
        ;;
    $logout)
        kill -9 -1
        ;;
    $sleep)
        systemctl suspend; GLITCHICON=/opt/glitchlock/stop.png /opt/glitchlock/glitchlock
        ;;
    $shutdown)
        systemctl poweroff
        ;;
    $restart)
        systemctl reboot
        ;;
    $back)
        ~/.config/rofi/modules/polybar/main/polybar.sh
        ;;
esac
