# WiFi Security Assessment Methodology

## Overview
This document outlines the methodology used for assessing WPA2 wireless network security.

## Tools Used
- Kali Linux Virtual Machine
- AWUS03ACH Wireless USB Adapter
- aircrack-ng suite (airmon-ng, airodump-ng, aireplay-ng, aircrack-ng)
- TP-Link Archer A54 Router (test environment)

## Testing Environment
- Controlled lab environment
- Only tested on owned equipment
- Test network: TestWPA2 with known password "password123"

## Attack Methodology

### Phase 1: Reconnaissance
1. Put wireless adapter in monitor mode
2. Scan for available networks
3. Identify target network and gather information

### Phase 2: Handshake Capture
1. Monitor target network traffic
2. Send deauthentication packets to force client reconnection
3. Capture WPA 4-way handshake

### Phase 3: Password Cracking
1. Use captured handshake with dictionary attack
2. Test passwords from rockyou.txt wordlist
3. Document results and time taken

## Results
- Successfully captured handshake in approximately 13 minutes
- Password cracked using dictionary attack in under 1 minute
- Demonstrates vulnerability of weak passwords in WPA2 networks
