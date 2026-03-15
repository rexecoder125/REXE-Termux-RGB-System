#!/bin/bash

# ==== RGB Color Flow ====
rgb() {
  for code in {31..36}; do
    echo -en "\e[1;${code}m$1\e[0m"
    sleep 0.02
  done
}

# ==== System Info ====
TIME=$(date +"%I:%M %p")
DATE=$(date +"%d-%m-%Y")
RAM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
STORAGE=$(df -h / | awk 'NR==2{print $3 "/" $2}')
DEVICE=$(getprop ro.product.model)
OS=$(getprop ro.build.version.release)

# ==== Banner Begin ====

clear
echo ""
rgb "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
rgb "        CYBER MATRIX RGB PANEL"
echo ""
echo -e "   \e[1;96mDeveloper:\e[0m \e[1;92mRexe\e[0m"
echo -e "   \e[1;96mDate:\e[0m      \e[1;95m$DATE\e[0m"
echo -e "   \e[1;96mTime:\e[0m      \e[1;95m$TIME\e[0m"
echo -e "   \e[1;96mDevice:\e[0m    \e[1;93m$DEVICE\e[0m"
echo -e "   \e[1;96mAndroid:\e[0m   \e[1;93m$OS\e[0m"
echo -e "   \e[1;96mRAM:\e[0m       \e[1;92m$RAM\e[0m"
echo -e "   \e[1;96mStorage:\e[0m   \e[1;92m$STORAGE\e[0m"

echo ""
rgb "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
sleep 0.5

# ==== Cyber Matrix Waves ====
for i in {1..12}; do
  rgb "▓▓▓▒▒▒░░ Cyber Matrix Waves ░░▒▒▒▓▓▓"
  echo ""
done
