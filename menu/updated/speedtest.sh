#!/bin/bash 
clear
sleep 2
clear
echo ""
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "    SERVER SPEED TEST "
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "    [ Please wait... ]"
echo "------------------------------"
speedtest-cli --simple
echo "------------------------------"
echo ""
read -sp " Press ENTER to go back"
echo ""
sleep 3
menu