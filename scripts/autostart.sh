#! /bin/sh

xset fp+ ~/dotfiles/fonts/tamzen-font-Tamzen-1.11.4/bdf
xset fp+ ~/dotfiles/fonts/neep
xset fp+ ~/.local/share/fonts/terminus/
xset fp rehash
xrdb -load dotfiles/xresources/Xresources
hsetroot -solid '#FFFFFF'
sxhkd &
xrandr --output VGA-1 --mode 2560x1440
compton &
panel &
dunst &
