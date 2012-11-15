#! /bin/bash

STATE=$(/usr/bin/acpi -t | grep "Thermal 0" | cut -c 16- | cut -d ' ' -f1)
STATE1=$(/usr/bin/acpi -t | grep "Thermal 1" | cut -c 16- | cut -d ' ' -f1)

if [[ $(echo $STATE | grep -v .) ]]; then
    STATE="STACCA STACCA STACC-"
else
    STATE="${STATE} C"
fi

if [[ $(echo $STATE1 | grep -v .) ]]; then
    STATE1="STACCA STACCA STACC-"
else
    STATE1="${STATE1} C"
fi


echo -ne "\005{= b}[\005{= W}+${STATE}\005{b}|\005{W}+${STATE1}\005{b}]"
