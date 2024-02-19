rm -rf xps
mkdir -p xps/.config/Code/User

cp ~/.config/Code/User/settings.json xps/.config/Code/User/
cp ~/.config/polybar/ xps/.config/ -r
cp ~/.config/i3/ xps/.config/ -r
cp ~/.config/dunst/ xps/.config/ -r
cp ~/.config/redshift.conf xps
cp ~/.bash_aliases xps
cp ~/.vimrc xps
cp ~/.zshrc xps
cp ~/.tmux.conf xps
cp ~/.p10k.zsh xps
cp ~/.fonts xps -r
cp ~/.fehbg xps
