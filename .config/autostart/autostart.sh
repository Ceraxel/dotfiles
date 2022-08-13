#!/bin/zsh

# Cursor speed
xset r rate 275 50

# Remap caps lock to esc and ctrl
setxkbmap -option caps:ctrl_modifier -option grp:shifts_toggle

# Kill previous running xcape instance
killall xcape
xcape -e 'Caps_Lock=Escape'





#
# Autostart
#
#
pgrep -x sxhkd > /dev/null 
sxhkd &
~/.local/scripts/mvcursor.sh
#killall geoclue
#killall redshift
#exec /usr/lib/geoclue-2.0/demos/agent &
#exec redshift -t 6500K:4500K &
#
# Set display from arandr saved script
sh ~/.screenlayout/monitor.sh &
# Add local script to path

# Mount drive Auto
killall udiskie
udiskie &


# Notifications
/usr/bin/dunst &
# Polkit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Wallpaper
nitrogen --restore &
# Dex
dex -a -s /etc/xdg/autostart/:~/.config/autostart/  
# Picom
# picom -CGb &
# Network Applet
nm-applet --indicator &

# Cursor
xsetroot -cursor_name left_ptr &

# Low battery notifier
~/.config/bspwm/scripts/low_bat_notifier.sh
xinput --set-prop 13 'libinput Accel Speed' -0.7

#picom
