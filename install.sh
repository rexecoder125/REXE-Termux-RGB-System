#!/bin/bash

# Update packages
pkg update -y && pkg upgrade -y

# Create directory
mkdir -p ~/REXE-Termux-RGB-System

# Download banner file
curl -L https://raw.githubusercontent.com/rexecoder125/REXE-Termux-RGB-System/main/banner.sh -o ~/REXE-Termux-RGB-System/banner.sh
chmod +x ~/REXE-Termux-RGB-System/banner.sh

# Create .bashrc
cat > ~/.bashrc << 'EOF'
bash ~/REXE-Termux-RGB-System/banner.sh
PS1='┌─(\[\e[1;36m\]rexe\[\e[0m\]㉿termux)-[\[\e[1;32m\]\w\[\e[0m\]]\n└─$ '
EOF

# Fix Termux new version (auto-load bashrc)
echo "source ~/.bashrc" >> ~/.bash_profile

echo ""
echo "REXE RGB Termux Installed Successfully!"
echo "Restart Termux now."
