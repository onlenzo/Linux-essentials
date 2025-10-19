#!/bin/bash
# 🔄 Update & Upgrade Script for Debian-based systems

echo "Updating system..."
sudo apt update -y && sudo apt upgrade -y

echo "Cleaning up..."
sudo apt autoremove -y

echo "✅ System updated successfully."
