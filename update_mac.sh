rm -rf mac
mkdir -p mac/.config

cp -r ~/.config/karabiner mac/.config/
cp -r ~/.config/skhd mac/.config/
cp -r ~/.config/yabai mac/.config/
cp -r ~/.config/fish/config.fish mac/.config/config.fish
cp -r ~/.config/nvim mac/.config/
cp ~/.vimrc mac/
cp ~/Library/Application\ Support/Code/User/settings.json mac/

