cd &
xrdb ~/.Xresources &
xautolock -locker /home/nfagan/.lock.sh -corners 00+- -cornerdelay 3 &
pulseaudio --start &
exec i3

