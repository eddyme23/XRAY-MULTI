#!/bin/bash
# Script by SL
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
xrayport="$(netstat -ntlp | grep -i xray | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
nginxport="$(netstat -ntlp | grep -i nginx | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sslhport="$(netstat -ntlp | grep -i sslh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sldnsport="$(netstat -ntlp | grep -i sldns-client | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
wsport="$(netstat -ntlp | grep -i python | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnelport="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport=OFF
nodeproxyport=OFF
udpgwport="$(netstat -nlpt | grep -i badvpn-udpgw | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
clear
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]━━━━━━━━━━━━━━━━━━━━━━━━━━━━[*][*][*]"
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                                 *******       "
echo -e "\e[0;37m                    Currently Active Ports     "
echo -e "\e[0;37m                                 *******       "
echo -e "\e[0;37m                         Service    :  Port    "
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                    Port Nginx      :  "$nginxport
echo -e "\e[0;37m                    Port Xray       :  "$xrayport
echo -e "\e[0;37m                    Port OpenSSH    :  "$opensshport
echo -e "\e[0;37m                    Port Squid      :  "$squidport
echo -e "\e[0;37m                    Port CloudFront :  "$nodeproxyport
echo -e "\e[0m                                                   "
echo -e "\e[0;37m                                 *******       "
echo -e "\e[0;37m                    * Info                      "
echo -e "\e[0;37m                    * If the port doesn't show,"
echo -e "\e[0;37m                    * it means the port is dead/OFF"
echo -e "\e[0m                                                   "
echo -e "\e[1;31m     [*][*][*]━━━━━━━━━━━━━━━━━━━━━━━━━━━━[*][*][*]$NC"
echo ""
read -sp " Press ENTER to go back"
echo ""
sleep 3
menu
