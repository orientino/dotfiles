alias monie='xrandr --auto; xrandr --output eDP-1 --off'
alias monil='xrandr --output eDP-1 --auto; xrandr --output eDP-1 --auto --left-of DP-1'
alias monir='xrandr --auto; xrandr --auto'

alias suspend='i3lock; sudo systemctl suspend'
alias hibernate='i3lock; sudo systemctl hibernate'

alias open='xdg-open'
alias google='google-chrome'
alias wifi='nmtui'
alias audio="pavucontrol"
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias battery-k3="cat /sys/class/power_supply/hid-dc\:2c\:26\:08\:1f\:73-battery/capacity"
alias bt="hciconfig"
alias bt-up="sudo hciconfig hci0 up"
alias bt-down="sudo hciconfig hci0 down"

#alias vpn='startct'
#alias xeon='ssh c.zhang4@131.114.50.227'

set -o vi
bind '"jj":"\e"'
