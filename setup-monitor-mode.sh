#!/bin/bash
# WiFi Security Assessment - Monitor Mode Setup
# Author: [Your Name]
# Date: [Today's Date]

echo "Setting up wireless adapter for monitor mode..."
echo "Kill interfering processes..."
sudo airmon-ng check kill

echo "Starting monitor mode..."
sudo airmon-ng start wlan0

echo "Verifying monitor mode is active..."
iwconfig
echo "Setup complete! Look for wlan0mon interface above."
