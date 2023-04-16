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
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Run as root
[[ "$(whoami)" != "root" ]] && {
    echo -e "\033[1;33m[\033[1;31mErro\033[1;33m] \033[1;37m- \033[1;33myou need to run as root\033[0m"
    rm $HOME/setup.sh >/dev/null 2>&1
    exit 0
}
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━=======
# Link Hosting Kalian
prjkt="raw.githubusercontent.com/prjkt-nv404/cfnfree/main/ssh"
echo ""
echo ""
echo -e "\033[01;31m\033[1;31m\033[5;34;47m                REQUIREMENTS...               \033[1;33m \033[0m\033[01;31m$NC"
echo ""
echo ""
sleep 3
#
cd
# collor status
error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
# Cek Domain
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
    clear
    echo -e " ${error1}Gagal Install-tools.."
    sleep 2
    exit 0
else
    clear
    echo -e "${success} Tool Installation..."
    sleep 2
fi
# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/bash
# rc.local
# By default this script does nothing.

# sslh-fix-reboot
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1024
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1024
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1024
systemctl enable xray
systemctl restart xray
systemctl restart nginx
systemctl enable runn
systemctl restart runn
iptables -I INPUT -p udp --dport 5300 -j ACCEPT
iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service
#
# set time GMT +0
ln -fs /usr/share/zoneinfo/Africa/Accra /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
 
#alat
sudo apt install -y libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev libcap-ng-utils libselinux1-dev libcurl4-nss-dev flex bison make libnss3-tools libevent-dev xl2tpd pptpd
#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y

# install wget and curl
apt -y install wget curl
apt -y install net-tools

# Install Requirements Tools
apt install ruby -y
apt install python -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
# apt install libssl1.0-dev -y
apt install libssl1.1 -y
apt install dos2unix -y
apt install speedtest-cli -y
apt-get install netfilter-persistent -y
apt-get install socat -y

#
# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "neofetch" >> .profile

# install webserver
#apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl

OS_ARCH=$(uname -i)
if [ $OS_ARCH == "x86_64" ]; then
echo "━━━━━━━━━━━━━━━"
echo " AMD SYSTEM "
echo "━━━━━━━━━━━━━━━"
sudo apt remove apache2 -y &>/dev/null
# sudo apt-get purge nginx-common nginx-full -y &>/dev/null
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl &>/dev/null
sudo systemctl restart nginx
/etc/init.d/nginx restart
echo "━━━━━━━━━━━━━━━━━━━━"
echo "  NGINX RESTARTED "
echo "━━━━━━━━━━━━━━━━━━━━"
elif [ $OS_ARCH == "aarch64" ]; then
echo "━━━━━━━━━━━━━━━"
echo " ARM SYSTEM "
echo "━━━━━━━━━━━━━━━"
sudo apt remove apache2 -y &>/dev/null
sudo apt-get purge nginx-common nginx-full -y &>/dev/null
sudo apt-get install nginx-common nginx-full -y &>/dev/null
sudo apt -y install php php-fpm php-cli php-mysql libxml-parser-perl &>/dev/null
sudo systemctl restart nginx
/etc/init.d/nginx restart
echo "━━━━━━━━━━━━━━━━━━━━"
echo "  NGINX RESTARTED "
echo "━━━━━━━━━━━━━━━━━━━━"
fi

rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
curl https://raw.githubusercontent.com/prjkt-nv404/cfnfree/main/ssh/nginx.conf > /etc/nginx/nginx.conf
curl https://raw.githubusercontent.com/prjkt-nv404/cfnfree/main/ssh/vps.conf > /etc/nginx/conf.d/vps.conf
sed -i 's/listen = \/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/fpm/pool.d/www.conf
useradd -m vps;
mkdir -p /home/vps/public_html
echo "<?php phpinfo() ?>" > /home/vps/public_html/info.php
chown -R www-data:www-data /home/vps/public_html
chmod -R g+rw /home/vps/public_html
cd /home/vps/public_html
wget -O /home/vps/public_html/index.html "https://raw.githubusercontent.com/prjkt-nv404/cfnfree/main/ssh/index.html1"
/etc/init.d/nginx restart
cd
cd
sudo apt remove apache2 -y  &>/dev/null
# sudo apt install nginx -y  &>/dev/null
chown -R www-data:www-data /home/vps/public_html
/etc/init.d/nginx restart
cd $HOME
    echo 'clear' >>.bashrc
    # echo 'echo ""' >>.bashrc
    # echo 'OS_ARCH=$(uname -i)' >>.bashrc
    # echo 'if [ $OS_ARCH == "x86_64" ]; then' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━"' >>.bashrc
    # echo 'echo "= AMD SYSTEM ="' >>.bashrc
    # echo 'echo "= skipping...="' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━"' >>.bashrc
    # echo 'elif [ $OS_ARCH == "aarch64" ]; then' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━"' >>.bashrc
    # echo 'echo "= ARM SYSTEM ="' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━"' >>.bashrc
    # echo 'echo -e "\t\e[1;33mPlease wait..."' >>.bashrc
    # echo 'sudo apt-get purge nginx-common nginx-full -y &>/dev/null' >>.bashrc
    # echo 'sudo apt-get install nginx-common nginx-full -y &>/dev/null' >>.bashrc
    # echo 'sudo systemctl restart nginx &>/dev/null' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━━━━━━"' >>.bashrc
    # echo 'echo "= NGINX RESTARTED ="' >>.bashrc
    # echo 'echo "━━━━━━━━━━━━━━━━━━━━"' >>.bashrc
    echo 'fi' >>.bashrc
    echo 'clear' >>.bashrc
    echo 'echo -e "\t\033[91m " ' >>.bashrc
    echo 'echo -e "\t\033[91m                       ████   █████                    █████ " ' >>.bashrc    
    echo 'echo -e "\t\033[91m                      ░░███  ░░███                    ░░███       " ' >>.bashrc
    echo 'echo -e "\t\033[91m  █████ █████  ██████  ░███  ███████    █████   █████  ░███████   " ' >>.bashrc
    echo 'echo -e "\t\033[91m ░░███ ░░███  ███░░███ ░███ ░░░███░    ███░░   ███░░   ░███░░███  " ' >>.bashrc
    echo 'echo -e "\t\033[91m  ░███  ░███ ░███ ░███ ░███   ░███    ░░█████ ░░█████  ░███ ░███  " ' >>.bashrc
    echo 'echo -e "\t\033[91m  ░░███ ███  ░███ ░███ ░███   ░███ ███ ░░░░███ ░░░░███ ░███ ░███  " ' >>.bashrc
    echo 'echo -e "\t\033[91m   ░░█████   ░░██████  █████  ░░█████  ██████  ██████  ████ █████ " ' >>.bashrc
    echo 'echo -e "\t\033[91m     ░░░░░     ░░░░░░  ░░░░░    ░░░░░  ░░░░░░  ░░░░░░  ░░░░ ░░░░░ " ' >>.bashrc
    echo 'echo "" ' >>.bashrc
    echo 'echo "" ' >>.bashrc
    echo 'echo -e "\t\033[92mTelegram   : @VoltsshBot, @voltssh " ' >>.bashrc
    echo 'echo -e "\t\e[1;33mPowered by : AIB Tech Pvt."' >>.bashrc
    echo 'echo ""' >>.bashrc
    echo 'DATE=$(date +"%d-%m-%y")' >>.bashrc
    echo 'TIME=$(date +"%T")' >>.bashrc
    echo 'echo -e "\t\e[1;33mSERVER NAME : $HOSTNAME"' >>.bashrc
    echo 'echo -e "\t\e[1;33mSERVER CONNECTED TO : $(uptime -p)"' >>.bashrc
    echo 'echo -e "\t\e[1;33mDATE : $DATE"' >>.bashrc
    echo 'echo -e "\t\e[1;33mTIME : $TIME"' >>.bashrc
    echo 'echo "" ' >>.bashrc
    echo 'echo -e "\t\033[97mTO DISPLAY BASH PANEL TYPE: sudo menu Or menu "' >>.bashrc
    echo 'echo -e ""' >>.bashrc
    clear
    echo ""
    echo ""
    date=$(date '+%Y-%m-%d <> %H:%M:%S')
    echo -e "\033[01;31m\033[1;31m\033[5;34;47m                INSTALLATION COMPLETED               \033[1;33m \033[0m\033[01;31m"
    echo -e "\033[01;31m\033[1;33mTO DISPLAY BASH PANEL TYPE:   \033[1;32mmenu\033[0m"
    echo -e "\033[01;31m\033[1;33m MORE INFORMATION \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@voltssh\033[0m"
    rm $HOME/setup.sh && cat /dev/null > ~/.bash_history && history -c