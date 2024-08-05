# Post Install

## Touchpad
```
Update /usr/share/X11/xorg.conf.d/40-libinput.conf with following
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection

```

## Brightness
```
Install acpilight  for brightness

$ git clone https://gitlab.com/wavexx/acpilight
$ cd acpilight
$ sudo make install

```

## Speaker audio
Install pavucontrol

```
$ sudo apt-get install pavucontrol
```

## Wallpaper
```
Install feh
$ sudo apt-get install feh

Add a image file with wallpaper.jpg: ~/Pictures/wallpaper.jpg
```

## i3-gaps

Install i3-gaps: https://github.com/shrnayvi/i3

## Lock screen
Requirements: 

ffmpeg:
```
$ sudo apt-get install ffmpeg
```

Copy lock.jpg to ~/Pictures/lock/jpg

Copy lock.sh file to ~/.config/i3/lock.sh and make executable file
chmod +x lock.sh

