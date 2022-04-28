#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Wallpaper
nitrogen --restore &

# Compositor
picom --experimental-backends &

# Key bindings / keyboard layout
xbindkeys &
setxkbmap gk &

# Disable monitor suspend when inactive
xset dpms 0 0 0 &
xset s off &

# Resolution
# Disabled for now since it's set through nvidia-settings (saved to xorg.conf)
# xrandr --output HDMI-0 --mode 1920x1080 --rate 240 &

# Status bar
# exec dwmblocks &
# ~/scripts/ping-volume-bar-on-startup.sh &

# Set digital vibrance
nvidia-settings --assign="DigitalVibrance=1023" &

# Hide mouse cursor
unclutter &

# Notification daemon
ntfd &

# Notification display client
dunst &

# Scrolling speed manager
imwheel &

# Eliminate mouse
warpd &

# Make Android Studio not break
# Also helps with Intellij (idea-ce) apparently
export _JAVA_AWT_WM_NONREPARENTING=1 &
wmname LG3D &

# Make keyring not prompt for password.
eval $(gnome-keyring-daemon --start) &
export SSH_AUTH_SOCK &

# Add unicode character insertion
/usr/bin/ibus-daemon --xim &

#while type dwm >/dev/null ; do dwm && continue || break ; done
exec leftwm > ~/.leftwm.log 2>&1

