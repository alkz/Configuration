#! /bin/sh
echo -ne "\005{= b}[\005{= W}$(cpufreq-info -mf -c 0 | tr -d '\n')\005{= b}|\005{= W}$(cpufreq-info -mf -c 1 | tr -d '\n')\005{= b}]"
