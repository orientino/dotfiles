# Dotfiles for XPS15 9500 & Macbook Pro M2
## Setup XPS15 9500
Run the following
```bash
# Enable the touchpad click
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection
EOF

# Reverse the touchpad controller direction 
sudo vim /usr/share/X11/xorg.conf.d/40-libinput.conf
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
EndSection

# Install packages
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

Install [light](https://github.com/haikarainen/light.git) for the intel backlight button, look for .deb
```
sudo dpkg -i light.deb
sudo usermod -a -G video username
```
Install [font awesome](https://github.com/FortAwesome/Font-Awesome/releases)
```
mkdir ~/.fonts
mv webfonts/*ttf ~/.fonts
```
Set ZSH in vim-mode
```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/softmoth/zsh-vim-mode.git
source "$ZSH/custom/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"

# add this to `.zshrc`
bindkey -M viins 'jj' vi-cmd-mode
```

Activate hibernate on Ubuntu
- Get UUID
- Swapon using Gparted
- Add swap UUID in fstab, grub, /etc/initramfs-tools/conf.d/resume
- update-grub, update-initramfs

Keyboard K3 config auto connect after sleep/hibernate
[[1]](https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444)
[[2]](https://askubuntu.com/questions/17504/how-can-i-have-a-bluetooth-keyboard-auto-connect-at-startup)
[[3]](https://github.com/rjekker/i3-battery-popup)

## Setup Macbook Pro M2
Install yabai, skhd, karabiner

```
# install fish
brew install fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v5

# install nvim for vscode
brew install neovim
```

[Disable app shortcuts (e.g. CMD+H)](https://superuser.com/questions/1043596/mac-osx-remove-hide-window-keyboard-shortcut) 
