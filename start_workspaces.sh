nightly &
sleep 4

i3-msg workspace "2: work"
sleep 0.2
start_wsession.sh &
sleep 3

i3-msg workspace "3: virtual"
sleep 0.2
urxvt -e sudo VirtualBox &
sleep 0.2

i3-msg workspace "4: docs2"
sleep 0.2
nightly &
sleep 1.5

i3-msg workspace "5: stuff1"
sleep 0.2
urxvt &
sleep 0.2

i3-msg workspace "6: stuff2"
sleep 0.2
urxvt &
sleep 0.2

i3-msg workspace "7: social1"
sleep 0.2
skype &
sleep 1
pidgin &
sleep 1

i3-msg workspace "8: social2"
sleep 0.2
nightly &
sleep 1.5

i3-msg workspace "9: stuff3"
sleep 0.2
urxvt &
sleep 0.2

i3-msg workspace "10: tests"
sleep 0.2
urxvt &
sleep 0.2
