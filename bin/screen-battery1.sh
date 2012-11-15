#! /bin/sh 

MODE=$(acpi -a | cut -c 12-)
STATE=$(acpi | cut -d ',' -f1 --complement | cut -c 2- | cut -d '%' -f1)

if [ "$MODE" = "off-line" ]; then
    if [ "$STATE" -le "2" ]; then
        urxvt -e sudo /usr/sbin/pm-suspend
    fi
fi

echo -ne "\005{= b}[\005{W}$MODE\005{= b} | \005{= W}$STATE%\005{b}]"
