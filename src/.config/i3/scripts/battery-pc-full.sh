percent=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "percentage"| awk '{print +$2}')
if [ $percent -gt 80 ]
then
    XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send "DOT is full ($percent%)!" "Save him by unplugging his life supply."
fi
