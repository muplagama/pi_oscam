#!/bin/bash
mkdir /etc/oscam
wget -O /etc/oscam/oscam https://lou.h4ck.me/builds/testing/oscam-svn11748-arm_v1403 > /dev/null 2>&1
chmod +x /etc/oscam/oscam
mkdir /etc/oscam/config

wget -O /etc/init.d/oscam https://raw.githubusercontent.com/muplagama/pi_oscam/main/rc 
chmod +x /etc/init.d/oscam
update-rc.d oscam defaults
/etc/init.d/oscam start
