#! /bin/bash 
OUTPUT=$(/sbin/iwconfig wlan0)

if [[ $(echo "$OUTPUT" | grep "No such device") ]]; then
    exit;
fi

ESSID=$(echo "$OUTPUT" | grep ESSID | cut -c 33- | cut -d ' ' -f1)
QUALITY=$(echo "$OUTPUT" | grep Quality | cut -c 24- | sed 's/ .*$//')
INT=$(echo "wlan0")

if [[  "$ESSID" = "off/any" ]]; then
    INT=$(echo "eth0")
    TMP=$(/sbin/ifconfig eth0)
    IP=$(echo "$TMP" | grep "inet addr" | cut -c 21- | cut -d ' ' -f1)
    echo -en "\005{= b}[\005{= W}$INT - $IP\005{= b}]"
else
    echo -en "\005{= b}[\005{= W}$INT - $ESSID: $QUALITY\005{= b}]"
fi
