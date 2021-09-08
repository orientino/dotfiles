percent=$(cat /sys/class/power_supply/hid-dc\:2c\:26\:08\:1f\:73-battery/capacity)
if [ $percent -lt 25 ]
then
    XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send "Battery K3 Low" "Please, recharge him."
fi
