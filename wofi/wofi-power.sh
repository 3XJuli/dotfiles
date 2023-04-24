#!/bin/sh


shutdown_command="systemctl poweroff"
reboot_command="systemctl reboot"
logout_command="swaymsg exit"
hibernate_command="systemctl hibernate"
suspend_command="systemctl suspend"

# you can customise the rofi command all you want ...
rofi_command="rofi -theme ~/.config/wofi/launcherSmoll.rasi"
options='shutdown\nlogout\nreboot\nhibernate\nsuspend' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"
