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
OK = "$ {
  Green
}[OK]$ {
  Font
}"
Error = "$ {
  Red
}[Mistake]$ {
  Font
}"
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
echo -e "$BLUE   --------------- "
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│           $PURPLE\033[106m✶ Setting Menu ✶$NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│➣$NC 1$NC. Change Domain               $NC"
echo -e "$BLUE│➣$NC 2$NC. Change Port XRAYS WS/GRPC & HTTP$NC"
echo -e "$BLUE│➣$NC 3$NC. Check Bandwidth Server      $NC"
echo -e "$BLUE│➣$NC 4$NC. Renew Cert                  $NC"
echo -e "$BLUE│➣$NC 5$NC. Script Info                 $NC"
echo -e "$BLUE│➣$NC 6$NC. Update dll/etc              $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│➣$NC 7$NC. Remove script               $NC"
echo -e "$BLUE│➣$NC 0$NC. Return                      $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE$NC"
read -p "Select From Options [ 0 - 7 ] : " menu
echo -e ""
case $menu in
1)
chngedomain
;;
2)
chngeport
;;
3)
vnstat
;;
4)
certxray
;;
5)
clear
cat /root/log-install.txt
echo ""
read -sp " Press ENTER to go back"
menu
;;
6)
updatedll
;;
7)
delscript
;;
0)
clear
menu
;;
esac
#