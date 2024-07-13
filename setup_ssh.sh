#!/bin/bash

# Message to display
echo "============================================"
echo "You're running a VPS made using Neko-Axis."
echo "Please join our Discord server at https://astralaxis.tech"
echo "============================================"
echo ""

# Update package lists and install OpenSSH Server
apt update
apt install -y openssh-server

# Enable SSH service on boot, start it now, and check status
systemctl enable ssh
systemctl start ssh
systemctl status ssh

# Instructions for setting permissions and executing the script
echo ""
echo "Setting script permissions..."
chmod +x setup_ssh.sh

echo "Executing setup script..."
./setup_ssh.sh
