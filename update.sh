rm -rf .config
mkdir .config

cp ~/.config/polybar/ ./.config/ -r
cp ~/.config/i3/ ./.config/ -r
cp ~/.config/dunst/ ./.config/ -r
cp ~/.config/redshift.conf .
cp ~/.bash_aliases .
cp ~/.vimrc .
cp ~/.zshrc .
cp ~/.tmux.conf .
cp ~/.p10k.zsh .
cp ~/.fonts . -r
cp ~/.fehbg .
