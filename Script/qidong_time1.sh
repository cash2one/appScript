#! /bin/bash

if [ -f ~/result.txt ]; then

  echo "" >  result.txt

else

  touch result.txt

fi

for ((i = 0; i <  50; i++))

do

  adb shell am start -W -n com.chinesevideo.app/com.chinesevideo.app.HomeActivity | grep "TotalTime" >>  result.txt

  adb shell am force-stop com.pingan.pinganwifi

done

awk -F