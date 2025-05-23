{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;\f1\froman\fcharset0 Times-Italic;}
{\colortbl;\red255\green255\blue255;\red214\green85\blue98;\red0\green0\blue0;\red74\green80\blue93;
\red197\green136\blue83;\red136\green185\blue102;\red81\green157\blue235;}
{\*\expandedcolortbl;;\cssrgb\c87843\c42353\c45882;\cssrgb\c0\c0\c0;\cssrgb\c36078\c38824\c43922;
\cssrgb\c81961\c60392\c40000;\cssrgb\c59608\c76471\c47451;\cssrgb\c38039\c68627\c93725;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0

\f1\i \cf4 \strokec4 # WiFi Security Assessment - Monitor Mode Setup
\f0\i0 \cf0 \strokec3  \

\f1\i \cf4 \strokec4 # Author: Taylor Waldo
\f0\i0 \cf0 \strokec3 \

\f1\i \cf4 \strokec4 # Date: May 22, 2025
\f0\i0 \cf0 \strokec3 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 echo\cf0 \strokec3  \cf6 \strokec6 "Setting up wireless adapter for monitor mode..."\cf0 \strokec3  \
\cf5 \strokec5 echo\cf0 \strokec3  \cf6 \strokec6 "Kill interfering processes..."\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0
\cf7 \strokec7 sudo\cf0 \strokec3  airmon-ng check \cf7 \strokec7 kill\cf0 \strokec3  \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 echo\cf0 \strokec3  \cf6 \strokec6 "Starting monitor mode..."\cf0 \strokec3  \
\pard\pardeftab720\partightenfactor0
\cf7 \strokec7 sudo\cf0 \strokec3  airmon-ng start wlan0 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 echo\cf0 \strokec3  \cf6 \strokec6 "Verifying monitor mode is active..."\cf0 \strokec3  \
iwconfig \
\cf5 \strokec5 echo\cf0 \strokec3  \cf6 \strokec6 "Setup complete! Look for wlan0mon interface above."}