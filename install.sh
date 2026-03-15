#!/bin/bash
# Cyber Matrix Banner Installer
# Developer: Rexe

clear
echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "   Cyber Matrix RGB Installer"
echo -e "   Developer: Rexe"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
sleep 1

echo -e "\e[1;92m[✔] Updating packages...\e[0m"
pkg update -y >/dev/null 2>&1
pkg upgrade -y >/dev/null 2>&1

echo -e "\e[1;92m[✔] Installing required tools...\e[0m"
pkg install git -y >/dev/null 2>&1

echo -e "\e[1;92m[✔] Cloning repository...\e[0m"
git clone https://github.com/YOURUSERNAME/A >/dev/null 2>&1

echo -e "\e[1;92m[✔] Setting up banner...\e[0m"
chmod +x ~/A/banner.sh
echo "bash ~/A/banner.sh" >> ~/.bashrc

echo ""
echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "    Installation Complete!"
echo -e "   Open Termux again to see"
echo -e "   your RGB Cyber Matrix Banner"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
sleep 1
