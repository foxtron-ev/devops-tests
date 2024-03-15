IP_LIST="8.8.8.8 168.95.1.1 19.50.10.18"

for IP in $IP_LIST; do
    echo "Ping testing $IP..."
    ping -c 1 $IP >> /dev/null
    if [ $? -eq 0 ]; then
       echo "$(date +'%Y/%m/%d %H:%M:%S') $IP is up"
    else
       echo "$(date +'%Y/%m/%d %H:%M:%S') $IP is down"
    fi
    echo ""
 done
