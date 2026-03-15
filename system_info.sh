#!/bin/bash

# Load RGB Engine
source $HOME/.rexe/rgb_engine.sh

# --------- SYSTEM INFO ENGINE ----------

# Date (Mar 15, 2026)
DATE_NOW=$(date +"%b %d, %Y")

# Time (12-hour → 05:30 PM)
TIME_NOW=$(date +"%I:%M %p")

# RAM Usage
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
RAM_SHOW="${RAM_USED}MB / ${RAM_TOTAL}MB"

# Storage Usage
DISK_USED=$(df -h $HOME | awk 'NR==2 {print $3}')
DISK_TOTAL=$(df -h $HOME | awk 'NR==2 {print $2}')
DISK_SHOW="$DISK_USED / $DISK_TOTAL"

# Developer Name (rexe)
DEV="rexe"

# ---------- DISPLAY WITH RAINBOW ----------

rainbow "📅 DATE     :  $DATE_NOW"
rainbow "⏱ TIME     :  $TIME_NOW"
rainbow "💾 STORAGE  :  $DISK_SHOW"
rainbow "🧠 RAM      :  $RAM_SHOW"
rainbow "👨‍💻 DEV      :  $DEV"
