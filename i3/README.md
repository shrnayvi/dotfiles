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


