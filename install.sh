#!/bin/bash

echo ""
echo "🔵 Installing REXE Termux RGB System..."
sleep 1

REXE_PATH="$HOME/.rexe"

# Create hidden folder
mkdir -p $REXE_PATH

# Copy project files to ~/.rexe
cp banner.txt $REXE_PATH/banner.txt
cp rgb_engine.sh $REXE_PATH/rgb_engine.sh
cp system_info.sh $REXE_PATH/system_info.sh
cp autorun.sh $REXE_PATH/autorun.sh

# Give permissions
chmod +x $REXE_PATH/*.sh

# Add autorun to Termux startup
BASHRC="$PREFIX/etc/bash.bashrc"

# Remove old entry (if installed before)
sed -i '/rexe\/autorun.sh/d' $BASHRC

# Add new autorun entry
echo "bash $REXE_PATH/autorun.sh" >> $BASHRC

echo ""
echo "🌈 REXE RGB System Installed Successfully!"
echo "➡ Restart Termux to see the RGB Banner."
echo ""
