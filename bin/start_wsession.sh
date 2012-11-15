cd /home/alkz
sleep 0.1

i3-msg workspace "2: work"
sleep 0.1
urxvt -e fagMail &
sleep 0.1
i3-msg split h
sleep 0.1
i3-msg layout default
sleep 0.1
urxvt &
sleep 0.1
urxvt -e vim &
sleep 0.1
i3-msg move up
sleep 0.1
i3-msg focus top
sleep 0.1
i3-msg resize grow height 5 px
i3-msg resize grow height 5 px
sleep 1
