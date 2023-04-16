#!/bin/bash
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
BGX="\033[106m"
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#information
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
clear
echo -e ""
echo -e "$BLUE   __   _______        __     __ "
echo -e "$BLUE   \ \ / /  __ \     /\\ \   / / "
echo -e "$BLUE    \ V /| |__) |   /  \\ \_/ /  "
echo -e "$BLUE     > < |  _  /   / /\ \\   /   "
echo -e "$BLUE    / . \| | \ \  / ____ \| |    "
echo -e "$BLUE   /_/ \_\_|  \_\/_/    \_\_|    "
echo -e "$BLUE   --------------- "
echo -e "$BLUE   XRAY MULTI PORT "                         
echo -e "$BLUE   --------------- $NC"
echo ""
ip=$(wget -qO- ipinfo.io/ip)
domainhost=$(cat /root/domain)
region=$(wget -qO- ipinfo.io/region)
isp=$(wget -qO- ipinfo.io/org)
timezone=$(wget -qO- ipinfo.io/timezone)
ossys=$(neofetch | grep "OS" | cut -d: -f2 | sed 's/ //g')
host=$(neofetch | grep "Host" | cut -d: -f2 | sed 's/ //g')
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
kernel=$(neofetch | grep "Kernel" | cut -d: -f2 | sed 's/ //g')
uptime=$(neofetch | grep "Uptime" | cut -d: -f2 | sed 's/ //g')
cpu=$(neofetch | grep "CPU" | cut -d: -f2 | sed 's/ //g')
memory=$(neofetch | grep "Memory" | cut -d: -f2 | sed 's/ //g')
echo -e "$CLAY IP Address :$NC $ip $NC"
echo -e "$CLAY Domain :$NC $domainhost $NC"
echo -e "$CLAY Region :$NC $region $NC"
echo -e "$CLAY ISP :$NC $isp $NC"
echo -e "$CLAY Date :$NC $(date +%A) $(date +%m-%d-%Y)"
echo -e "$CLAY Up Time :$NC $uptime $NC"
echo -e "$CLAY CPU Load :$NC $LOADCPU $NC"
echo -e "$CLAY Memory :$NC $memory $NC"
echo ""
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│      $PURPLE\033[106m[ Main Menu - VoltSSH ]\033[0m"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐"
echo -e "$BLUE│➣$NC 1$NC. XRAYS WS/GRPC               $NC"
echo -e "$BLUE│➣$NC 2$NC. Restart All Services        $NC"
echo -e "$BLUE│➣$NC 3$NC. List Port Used              $NC"
echo -e "$BLUE│➣$NC 4$NC. Check Services              $NC"
echo -e "$BLUE│➣$NC 5$NC. Settings                    $NC"
echo -e "$BLUE│➣$NC 6$NC. Speed Test                  $NC"
echo -e "$BLUE│➣$NC 0$NC. Exit                        $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│➣$NC minified Menu by VoltSSH          $NC"
echo -e "$BLUE│➣$NC Telegram https://t.me/vp_voltssh  $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE$NC"  
read -p "Select From Options [ 0 - 6 ] : " menu
echo -e ""
case $menu in
1)
maddxray
;;
2)
restart-xray
;;
3)
cek-port
;;
4)
start-menu
;;
5)
msettings
;;
6)
clear
speedtest
;;
0)
exit
clear
;;
esac
#
