#!/bin/bash
# WiFi Security Assessment - Network Discovery
# Scans for available wireless networks

echo "Scanning for wireless networks..."
echo "Press Ctrl+C to stop scanning"
sudo airodump-ng wlan0mon
