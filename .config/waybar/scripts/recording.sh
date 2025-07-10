#!/bin/sh

if [ "$1" == "status" ]; then
	if [ -z $(pidof -x gpu-screen-recorder) ]; then
		printf '{"tooltip":"Not recording", "text":""}'
  	else
  		printf '{"tooltip":"Recording", "class":"recording", "text":""}'
	fi
elif [ "$1" == "toggle" ]; then
	if [ -z $(pidof -x gpu-screen-recorder) ]; then
		echo "here"
		notify-send "Recording Started"	
		gpu-screen-recorder -w screen -f 60 -c mkv -o "$HOME/Videos/$(date +%F-%H%M%S).mkv"
	else
        	echo $(pgrep -f gpu-screen-recorder)
		killall -s SIGINT gpu-screen-recorder
		notify-send "Recording Complete"
	fi
	pkill -RTMIN+8 waybar
else
	printf "Error"
fi
