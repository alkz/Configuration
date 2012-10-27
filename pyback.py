import os
import random
import sys

os.system("xrandr > ~/tmp1");
f = open("/home/alkz/tmp1", "r")
s = f.read();


if s.find("VGA-0 connected") != -1:
    if (random.random() * 100) > 50:
        image = "nekomimi_b_bg_big.png"
    else:
        image = "nekomimi_bg_big.png"


    if(sys.argv[1] == "1"):
        os.system("xrandr --output VGA-0 --above LVDS")

    s = "fbsetbg ~/images/bg/"
    s += image
    os.system(s)

    if(sys.argv[1] == "1"):
        os.system("i3status | dzen2 -y 1518 -bg black -ta r -x 400 -w 1280")

else:
    if (random.random() * 100) > 50:
        image = "nekomimi_b_bg.png"
    else:
        image = "nekomimi_bg.png"

    s = "fbsetbg ~/images/bg/"
    s += image
    os.system(s)

    if(sys.argv[1] == "1"):
        os.system("i3status | dzen2 -y 750 -bg black -ta r -x 400 -w 1280")


