#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#676e7d}"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo ""
  fi
  echo "%{F#f3f4f5}"
fi
