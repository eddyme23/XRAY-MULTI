#!/bin/bash
# My Telegram : https://t.me/vp_voltssh
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
#Getting
MYIP=$(wget -qO- ipinfo.io/ip);

error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
#Domain lama
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
clear
echo ""
echo -e "\033[01;31m\033[1;31m\033[5;34;47m                ADD YOUR DOMAIN               \033[1;33m \033[0m\033[01;31m$NC"
echo ""
echo ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -rp "Input Domain/Hostname : " -e domain1
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Domain added: ${BLUE}${domain1}${NC}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Your IP is: ${PURPLE}$MYIP $NC"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}Please Wait..."
sleep 3

rm -f /etc/xray/xray.crt
rm -f /etc/xray/xray.key
rm -f /root/domain
rm -f /etc/xray/domain
# Done
echo $domain1 >> /etc/xray/domain
echo $domain1 >> /root/domain
echo "IP=$domain1" >> /var/lib/akbarstorevpn/ipvps.conf
#Bersihkan terminal
clear
sleep 1

apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
ntpdate pool.ntp.org
apt -y install chrony
timedatectl set-ntp true
systemctl enable chronyd && systemctl restart chronyd
systemctl enable chrony && systemctl restart chrony
timedatectl set-timezone Africa/Accra
chronyc sourcestats -v
chronyc tracking -v
mkdir -p /etc/xray
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
curl https://get.acme.sh | sh
bash acme.sh --install
cd .acme.sh
bash acme.sh --set-default-ca --server letsencrypt
bash acme.sh --register-account -m senowahyu62@gmail.com
bash acme.sh --issue -d $domain1 --standalone
bash acme.sh --installcert -d $domain1 --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key
sleep 3
clear
