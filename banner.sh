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

# 🦉 CYBER OWL LOGO + FIRE EYES
echo -e "${cyan}"
echo "                 ███████████████████████████████"
echo "            ███████████████████████████████████████"
echo "        █████████████████████████████████████████████"
echo "      ████████████${red}██${yellow}🔥${red}██${cyan}████████████████████${red}██${yellow}🔥${red}██${cyan}████████████"
echo "    ███████████${red}████${yellow}🔥🔥${red}████${cyan}████████████████${red}████${yellow}🔥🔥${red}████${cyan}███████████"
echo "   █████████${red}████████${yellow}🔥🔥🔥${red}████████${cyan}████████${red}████████${yellow}🔥🔥🔥${red}████████${cyan}█████████"
echo "  ████████${red}████████████${yellow}🔥🔥🔥🔥${red}████████████${cyan}███████"
echo "  ███████${red}████████████████${yellow}🔥🔥🔥🔥🔥${red}██████████████${cyan}██████"
echo "  ███████${red}████████████████████${yellow}🔥🔥🔥🔥${red}██████████████${cyan}██████"
echo "   ███████${red}██████████████████████████████████${cyan}███████"
echo "    ████████${red}██████████████████████████████${cyan}████████"
echo "      █████████${red}██████████████████████${cyan}██████████"
echo "        ███████████${red}██████████████${cyan}████████████"
echo "            ██████████████████████████████████"
echo "                 ██████████████████████████"
echo -e "${reset}"

echo -e "${green}-------------------------------------------------------------------------------------------------${reset}"
echo -e "${yellow}   Developer   : Rexe${reset}"
echo -e "${yellow}   Date        : ${DATE}${reset}"
echo -e "${yellow}   Time        : ${TIME}${reset}"
echo -e "${yellow}   Device      : ${MODEL}${reset}"
echo -e "${yellow}   Android     : ${ANDROID}${reset}"
echo -e "${yellow}   RAM         : ${RAM}${reset}"
echo -e "${yellow}   Storage     : ${STORAGE}${reset}"
echo -e "${green}-------------------------------------------------------------------------------------------------${reset}"

# RGB Matrix Waves
for i in {1..40}; do
    for color in 31 32 33 34 35 36; do
        echo -ne "\e[${color}mCyber Matrix Waves\e[0m "
    done
    echo ""
done
