#!/bin/bash

TOKEN="yourBot'sAPI"
CHAT_ID="YourTelegramID"

while true; do
  LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)

  if [ "$LEVEL" -eq 67 ]; then
    curl -s "https://api.telegram.org/bot$TOKEN/sendMessage" \
      -d chat_id=$CHAT_ID \
      -d text="67 ALERT HEADS UP!"
    exit
  fi

  sleep 60
done
