#!/bin/bash
clear
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo ""
echo ""
echo ""
echo -e "\033[1;32mDo You Really Want Remove XRay Tool ?\033[1;33m"
read -p "Proceed to Remove? [y/n] " resp
if [[ "$resp" = y || "$resp" = Y ]];then
    echo ""
    echo ""
    echo -e "\033[1;33mcleaning...\033[1;33m"
    apt-get purge screen -y > /dev/null 2>&1
    apt-get purge nmap -y > /dev/null 2>&1
    apt-get purge figlet -y > /dev/null 2>&1
    apt-get purge squid -y > /dev/null 2>&1
    apt-get purge squid3 -y > /dev/null 2>&1
    apt-get purge dropbear -y > /dev/null 2>&1
    apt-get purge apache2 -y > /dev/null 2>&1
    rm -rf /var/lib/akbarstorevpn* /var/lib/crot* /etc/xray* > /dev/null 2>&1
    rm -rf ./adddomain.sh* ./install-tools.sh* ./install-xray.sh* ./updatedll.sh* > /dev/null 2>&1
    rm -rf /root/log-install.txt /etc/systemd/system/xray.service.d /usr/bin/xray* /usr/bin/v2ray* /etc/xray* /etc/v2ray* > /dev/null 2>&1
    rm -rf /usr/bin/bbr* /usr/local/bin/xray* /etc/xray/config.json* /usr/bin/menu* /usr/bin/updatedll*  > /root/null 2>&1
    rm -rf /usr/bin/maddxray* /usr/bin/msetting* /usr/bin/start-menu* /usr/bin/mbackup* > /dev/null 2>&1
    rm -rf $HOME/setup.sh > /dev/null 2>&1

    clear
    echo -e "\033[1;36mThanks for using XRAY MultiPort - @voltssh\033[1;33m"
    sleep 3
    echo -e "\033[1;31m SCRIPT SUCCESSFULLY REMOVED ✔️\033[0m"
    echo ""
    echo -e "\033[1;31mRESTART SERVER... \033[0m"
    sleep 3
    clear
    reboot
elif [[ "$resp" = n || "$resp" = N ]];then
    echo ""
    echo ""
    echo -e "\033[1;31m Command Cancelled ❌\033[0m"
    menu
fi