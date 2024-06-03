#!/bin/sh

selected=$(echo -e "Shutdown\nReboot\nSuspend\nLogout" | rofi -dmenu -p "Power Options")
 
if [ "$selected" = "Shutdown" ]; then
    poweroff
elif [ "$selected" = "Restart" ]; then
    reboot
elif [ "$selected" = "Suspend" ]; then
    systemctl suspend
elif [ "$selected" = "Logout" ]; then
    bspc quit
else
    echo "Invalid Option"
    
fi

