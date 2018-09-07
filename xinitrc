xbindkeys
xrdb -merge ~/.Xresources
export XDG_CURRENT_DESKTOP=i3
exec i3 --force-xinerama -V >>~/.i3/i3log 2>&1
