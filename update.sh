rm -rf src
mkdir -p src/.config/Code/User

cp ~/.config/Code/User/settings.json src/.config/Code/User/
cp ~/.config/polybar/ src/.config/ -r
cp ~/.config/i3/ src/.config/ -r
cp ~/.config/dunst/ src/.config/ -r
cp ~/.config/redshift.conf src
cp ~/.bash_aliases src
cp ~/.vimrc src
cp ~/.zshrc src
cp ~/.tmux.conf src
cp ~/.p10k.zsh src
cp ~/.fonts src -r
cp ~/.fehbg src
