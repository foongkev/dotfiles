#! /bin/sh

# Uncomment this if need to enable tapping on trackpad (if not using a vm)
# Also type 'xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Synaptics Scrolling Distance"' to get the scrolling distance
# xinput set-prop "Synaptics TM3072-003" "Synaptics Tap Action" 0 0 0 0 1 3 2
# xinput set-prop "Synaptics TM3072-003" "Synaptics Scrolling Distance" -114 -114
# xinput set-prop "Synaptics TM3072-003" "Synaptics Two-Finger Scrolling" 1 1

# Load fonts into font database and refresh database
xset fp+ ~/dotfiles/fonts/tamzen-font-Tamzen-1.11.4/bdf
xset fp+ ~/dotfiles/fonts/siji
xset fp rehash

# Load Xresources
xrdb -load ~/dotfiles/xresources/Xresources

# Set white background (Should change this to wallpaper)
hsetroot -fill ~/dotfiles/wallpapers/artsfon.com-27292.jpg

# Change resolution
xrandr --output VGA-1 --mode 2560x1440

# Load programs
sxhkd &
compton &
dunst &

#panel &
exec /bin/sh ~/dotfiles/scripts/polybar.sh
