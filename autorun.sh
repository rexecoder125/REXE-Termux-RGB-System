#!/bin/bash

# Auto Boot Loader for Termux
# Loads Banner + RGB Engine + System Info

# Path Setup
REXE_PATH="$HOME/.rexe"

# Load RGB Engine
source $REXE_PATH/rgb_engine.sh

clear

# Show RGB Banner
rainbow_file "$REXE_PATH/banner.txt"

echo ""
# Show System Info (also RGB)
bash "$REXE_PATH/system_info.sh"

echo ""
