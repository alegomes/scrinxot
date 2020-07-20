#!/bin/bash

if [[ $# -ne 3 ]]; then
	echo "Usage $0 <prepTime> <numOfShots> <waitInBetween>"
	exit 64
fi

PREPTIME=$1
NUMOFSHOTS=$2
WAITINBETWEEN=$3

echo "Get yourself ready! Shotting in $PREPTIME seconds..."
sleep $PREPTIME
for i in $(seq $NUMOFSHOTS); do
	XOTFILE="$HOME/Downloads/scrinxot-$(date +%Y%m%d-%H%M%S).png"

	echo -e "\nShooting $i"
	screencapture -m $XOTFILE
	echo "File saved at $XOTFILE. Waiting for $WAITINBETWEEN seconds for the next one..."
	sleep $WAITINBETWEEN
done
#sleep 10; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; sleep 30; screencapture -m ~/Downloads/kamon-wod-$(date +%Y%m%d-%H%M%S).png; 