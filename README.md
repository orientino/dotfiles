# Dotfiles for XPS15 9500
## Enable the touchpad click 
```
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection
EOF
```

## Reverse the touchpad controller direction 
```
sudo vim /usr/share/X11/xorg.conf.d/40-libinput.conf
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection
```

## Set intel backlight button
Install [light](https://github.com/haikarainen/light.git), look for .deb and install it
```
sudo dpkg -i light.deb
sudo usermod -a -G video username
```

## Install additional utils
```
sudo apt install feh            # background images
sudo apt install i3blocks       # status bar
sudo apt install polybar        # status bar
sudo apt install rofi           
sudo apt install flameshot      # screenshot
sudo apt install redshift       # night light
sudo apt install zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
```

## Install fonts
Download [Font Awesome](https://github.com/FortAwesome/Font-Awesome/releases).
```
mkdir ~/.fonts
mv webfonts/*ttf ~/.fonts
```

## Activate hibernate on Ubuntu
- Get UUID
- Swapon using Gparted
- Add swap UUID in fstab, grub, /etc/initramfs-tools/conf.d/resume
- update-grub, update-initramfs

## Keyboard K3 config auto connect after sleep/hibernate
https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444
https://askubuntu.com/questions/17504/how-can-i-have-a-bluetooth-keyboard-auto-connect-at-startup
https://github.com/rjekker/i3-battery-popup

