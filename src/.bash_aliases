alias monie='xrandr --auto; xrandr --output eDP-1 --off'
alias monil='xrandr --output eDP-1 --auto; xrandr --output eDP-1 --auto --left-of DP-1'
alias monir='xrandr --auto; xrandr --auto'

alias suspend='sudo systemctl suspend; i3lock'
alias hibernate='sudo systemctl hibernate; i3lock'

alias open='xdg-open'
alias google='google-chrome'
alias temperature='sensors'
alias wifi='nmtui'
alias audio="pavucontrol"
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias battery-k3="cat /sys/class/power_supply/hid-dc\:2c\:26\:08\:1f\:73-battery/capacity"
alias bt="hciconfig"
alias bt-up="sudo hciconfig hci0 up"
alias bt-down="sudo hciconfig hci0 down"

#alias vpn='startct'
#alias xeon='ssh c.zhang4@131.114.50.227'
alias blazegraph="java -server -Xmx4g -Djetty.port=9911 -jar blazegraph.jar"
alias p3="python3"

#cp and cd in one command
cpcd (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}

#mv and cd in one command
mvcd (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}
