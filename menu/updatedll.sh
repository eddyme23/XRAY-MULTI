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
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━===
# Getting
#
# Run as root
[[ "$(whoami)" != "root" ]] && {
    echo -e "\033[1;33m[\033[1;31mErro\033[1;33m] \033[1;37m- \033[1;33myou need to run as root\033[0m"
    rm $HOME/setup.sh >/dev/null 2>&1
    exit 0
}
cd
clear
echo ""
echo ""
echo -e "\033[01;31m\033[1;31m\033[5;34;47m                ENVIRONMENT SETUP...               \033[1;33m \033[0m\033[01;31m"
echo ""
echo ""
# status colors
error1="${RED} [ERROR] ${NC}"
success="${GREEN} [OK] ${NC}"
# Check Domain
source /var/lib/akbarstorevpn/ipvps.conf

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
OS_ARCH=$(uname -i)
if [ $OS_ARCH == "x86_64" ]; then
echo "━━━━━━━━━━━━━━━"
echo "= AMD SYSTEM ="
echo "━━━━━━━━━━━━━━━"
# sudo apt remove apache2 -y
# sudo apt-get purge nginx-common nginx-full -y &>/dev/null
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
sudo systemctl restart nginx
/etc/init.d/nginx restart
echo "━━━━━━━━━━━━━━━━━━━━"
echo "= NGINX RESTARTED ="
echo "━━━━━━━━━━━━━━━━━━━━"
elif [ $OS_ARCH == "aarch64" ]; then
echo "━━━━━━━━━━━━━━━"
echo "= ARM SYSTEM ="
echo "━━━━━━━━━━━━━━━"
sudo apt remove apache2 -y
sudo apt-get purge nginx-common nginx-full -y
sudo apt-get install nginx-common nginx-full -y
sudo systemctl restart nginx
/etc/init.d/nginx restart
echo "━━━━━━━━━━━━━━━━━━━━"
echo "= NGINX RESTARTED ="
echo "━━━━━━━━━━━━━━━━━━━━"
sudo apt -y install php php-fpm php-cli php-mysql libxml-parser-perl
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# your hosting link
akbarvpn="https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu"
akbarvpnn="https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/updated"
akbarvpnnn="https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/updated"
cd
rm -r updatedll
wget -O updatedll "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/updatedll.sh"
rm -rf updatedll

# hapus
cd /usr/bin
rm -rf xmenu
rm -rf menu
rm -rf updatedll
rm -r updatedll
# download
#
cd /usr/bin
# update
wget -O add-akun "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/add-akun.sh"
wget -O delete-akun "https://raw.githubusercontent.com/lizsvr/XRAY-MULTI/main/menu/delete-akun.sh"
# pull for next update
wget -O updatedll "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/updatedll.sh"
# misc
wget -O certv2ray "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/xray/certv2ray.sh"
wget -O restart-xray "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/restart-xray.sh"
wget -O cek-port "https://raw.githubusercontent.com/prjkt-nv404/XRAY-MULTI/main/menu/cek-port.sh"
# Update menu
wget -O menu "${akbarvpnn}/menu.sh"
wget -O msettings "${akbarvpnn}/msetting.sh"
wget -O speedtest "${akbarvpnn}/speedtest.sh"
wget -O maddxray "${akbarvpnn}/maddxray.sh"
wget -O start-menu "${akbarvpnn}/start-menu.sh"
# update xray menu
wget -O addvmess "${akbarvpnnn}/addvmess.sh"
wget -O dellvmess "${akbarvpnnn}/dellvmess.sh"
wget -O rennewvmess "${akbarvpnnn}/rennewvmess.sh"
wget -O addvless "${akbarvpnnn}/addvless.sh"
wget -O dellvless "${akbarvpnnn}/dellvless.sh"
wget -O rennewvless "${akbarvpnnn}/rennewvless.sh"
wget -O addtrojan "${akbarvpnnn}/addtrojan.sh"
wget -O delltrojan "${akbarvpnnn}/delltrojan.sh"
wget -O rennewtrojan "${akbarvpnnn}/rennewtrojan.sh"
wget -O addss "${akbarvpnnn}/addss.sh"
wget -O dellss "${akbarvpnnn}/dellss.sh"
wget -O rennewss "${akbarvpnnn}/rennewss.sh"
wget -O adddomain "${akbarvpnnn}/adddomain.sh"
wget -O chngedomain "${akbarvpnnn}/chngedomain.sh"
wget -O chngeport "${akbarvpnnn}/chngeport.sh"
wget -O certxray "${akbarvpnnn}/certxray.sh"
wget -O xp "${akbarvpnnn}/xp.sh"
# delscript
wget -O delscript "${akbarvpnnn}/delscript.sh"

###
# execute permission
chmod +x /usr/bin/updatedll
chmod +x add-akun
chmod +x delete-akun
chmod +x updatedll
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port
# update menu
chmod +x msettings
chmod +x maddxray
chmod +x start-menu
chmod +x menu
chmod +x speedtest
chmod +x delscript
# update xray menu
chmod +x addvmess
chmod +x dellvmess
chmod +x rennewvmess
chmod +x addvless
chmod +x dellvless
chmod +x rennewvless
chmod +x addtrojan
chmod +x delltrojan
chmod +x rennewtrojan
chmod +x addss
chmod +x dellss
chmod +x rennewss
chmod +x certxray
chmod +x adddomain
chmod +x chngedomain
chmod +x chngeport
chmod +x xp

##
clear
echo ""
echo ""
echo ""
echo -e "${success}Update Done..."
cd
echo ""
sleep 3
##