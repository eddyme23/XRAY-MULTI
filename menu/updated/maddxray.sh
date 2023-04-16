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
OK="${GREEN}[OK]${NC}"
Error="${RED}[Mistake]${NC}"
BRED="\e[41m"
BBLUE="\e[38;5;21m"
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
echo -e "$BLUE│       $PURPLE\033[106m[ ✶ XRAYS-MultiPort ✶ ]$NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│ $PURPLE\033[106m[ ✶ VMESS WS/GRPC ✶ ]$NC"
echo -e "$BLUE│➣$NC 1$NC. Create Account XRAYS Vmess $NC"
echo -e "$BLUE│➣$NC 2$NC. Delete Account XRAYS Vmess $NC"
echo -e "$BLUE│➣$NC 3$NC. Renew Account XRAYS Vmess  $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│ $PURPLE\033[106m[ ✶ VLESS WS/GRPC ✶ ]$NC"
echo -e "$BLUE│➣$NC 4$NC. Create Account XRAYS VLESS $NC"
echo -e "$BLUE│➣$NC 5$NC. Delete Account XRAYS VLESS $NC"
echo -e "$BLUE│➣$NC 6$NC. Renew Account XRAYS VLESS  $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│ $PURPLE\033[106m[ ✶ TROJAN WS/GRPC ✶ ]$NC"
echo -e "$BLUE│➣$NC 7$NC. Create Account XRAYS Trojan$NC"
echo -e "$BLUE│➣$NC 8$NC. Delete Account XRAYS Trojan$NC"
echo -e "$BLUE│➣$NC 9$NC. Renew Account XRAYS Trojan $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│ $PURPLE\033[106m[ ✶ SHADOWSOCKS WS/GRPC ✶ ]$NC"
echo -e "$BLUE│➣$NC 10$NC. Create Account ShadowSocks$NC"
echo -e "$BLUE│➣$NC 11$NC. Delete Account ShadowSocks$NC"
echo -e "$BLUE│➣$NC 12$NC. Renew Account ShadowSocks $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE"
echo -e "$BLUE┌───────────────────────────────────────┐$BLUE"
echo -e "$BLUE│➣$NC 0$NC. Return                     $NC"
echo -e "$BLUE└───────────────────────────────────────┘$BLUE$NC"

read -p " ➣ Select From Options [ 0 - 12 ]:  " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
dellvmess
;;
3)
rennewvmess
;;
4)
addvless
;;
5)
delless
;;
6)
rennewvless
;;
7)
addtrojan
;;
8)
delltrojan
;;
9)
rennewtrojan
;;
10)
addss
;;
11)
dellss
;;
12)
rennewss
;;
0)
menu
;;
*)
clear
bash menu
;;
esac
#
