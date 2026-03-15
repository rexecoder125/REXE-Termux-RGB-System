#!/bin/bash

# Colors
red='\e[1;31m'
yellow='\e[1;33m'
green='\e[1;32m'
cyan='\e[1;36m'
reset='\e[0m'

clear

# Device Info
DATE=$(date "+%d-%m-%Y")
TIME=$(date "+%I:%M %p")
MODEL=$(getprop ro.product.model)
ANDROID=$(getprop ro.build.version.release)
RAM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
STORAGE=$(df -h /data | awk 'NR==2 {print $3 "/" $2}')

# OWL + PANEL TITLE
echo -e "${cyan}"
echo -e "              ███████████████████████"
echo -e "        █████████████████████████████████"
echo -e "     ███████████████████████████████████████"
echo -e "   ███████████▀▀▀▀███▀██████▀▀▀▀███▀███████████"
echo -e "  ███████▀              ███              ▀███████"
echo -e " ██████                 ███                 ██████"
echo -e "██████      ██████      ███      ██████      ██████"
echo -e "█████      ███████      ███      ███████      █████"
echo -e "█████      ███████      ███      ███████      █████"
echo -e "██████      ██████      ███      ██████      ██████"
echo -e " ██████                 ███                 ██████"
echo -e "  ███████▄             █████             ▄███████"
echo -e "   ██████████▄      ███████████      ▄██████████"
echo -e "     █████████████████████████████████████████"
echo -e "        █████████████████████████████████"
echo -e "              ███████████████████████"
echo ""
echo -e "          ${green}CYBER MATRIX RGB PANEL${reset}"
echo ""

# Device Box
echo -e "${green}────────────────────────────────────────────────────────${reset}"
echo -e "${yellow}  Developer   : Rexe"
echo -e "  Date        : $DATE"
echo -e "  Time        : $TIME"
echo -e "  Device      : $MODEL"
echo -e "  Android     : $ANDROID"
echo -e "  RAM         : $RAM"
echo -e "  Storage     : $STORAGE${reset}"
echo -e "${green}────────────────────────────────────────────────────────${reset}"
echo ""

# RGB Waves
for i in {1..30}; do
    for color in 31 32 33 34 35 36; do
        echo -ne "\e[${color}m Cyber Matrix Waves \e[0m"
    done
    echo ""
done
