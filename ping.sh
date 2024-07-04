#!/bin/bash

#shopt -s -o mounset

ip_address=("8.8.8.8" "168.95.1.1" "19.50.10.18")

#>ping.txt

for ip in "${ip_address[@]}"; do
  echo "testing ${ip}..." 
  echo "testing ${ip}..." >> ping.txt
  #ping -c 10 ${ip} >> ping.txt
  ping_result=$(ping -c 1 "${ip}")
  if [ $? -eq 0 ]; then
    current_time=$(date '+%Y/%m/%d %H:%M:%S')
    echo "${current_time} ${ip} is up" >> ping.txt
  else
    echo "${current_time} ${ip} is down" >> ping.txt
  fi
echo "" >> ping.txt
done
