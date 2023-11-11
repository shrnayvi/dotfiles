# Post Install(Arch)


## Dependencies

- [Bumblebee-status](#bumblebee-status)
- [Alacritty](../alacritty/READMD.md)
- [Nitrogen](#nitrogen)
- [DejaVu](#dejavu)
- [Rofi](https://wiki.archlinux.org/title/rofi)
- gnome-screenshot - For Screenshot
    - xclip for copying screenshot to clipboard

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

### Install acpilight  for brightness or brighnessctl(using for arch)

```

$ git clone https://gitlab.com/wavexx/acpilight
$ cd acpilight
$ sudo make install

```

### For brighnessctl(arch)

```
$ sudo pacman -S brighnessctl
```

## Speaker audio
Install pavucontrol 

Ubuntu
```
$ sudo apt-get install pavucontrol
```

Arch
```
$ sudo pacman -S pavucontrol
```

## Wallpaper
### Feh
```
Install feh
$ sudo pacman -S feh

Add a image file with wallpaper.jpg: ~/Pictures/wallpaper.jpg
```

### Nitrogen
```
Install nitrogen and run it from dmenu
$ sudo pacman -S nitrogen 

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


## Install status bar

### Bumblebee status
Clone the repo into `.config` folder
https://github.com/tobi-wan-kenobi/bumblebee-status#installation

Need fontawesome for the icons to work

```
Install fontawesome

yay -S r-fontawesome
```

## Lock screen after suspend
In order for this to work, do the following:

Create a system service for i3lock

```
[Unit]
Description=Lock screen on sleep
Before=sleep.target
Before=suspend.target

[Service]
User=%1
Type=forking
Environment=DISPLAY=:0
ExecStart=/home/%i/.config/i3/scripts/lock.sh

[Install]
WantedBy=sleep.target
WantedBy=suspend.target

```

```
$ sudo systemctl daemon-reload
```

```
$ sudo systemctl enable i3lock.service```


## Dejavu
Install dejavu font(Arch)

```
$ yay -S ttf-dejavu-nerd
```

## gnome-screenshot

```
$ sudo pacman -S gnome-screenshot
$ sudo pacman -S xclip
```
