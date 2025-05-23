# WiFi Security Assessment Project

A comprehensive educational demonstration of wireless network security assessment techniques focusing on WPA2 vulnerabilities.
This was a project we set out to accomplish for our CSC 344 Computer Networks class at the University of North Carolina Wilmington.
The presentation lasted approximately 48 minutes and covered the history of WEP, WPA, WPA2, WPA3, and other relevant background information.
The responsibility of presenting was bestowed upon my teammates, while I handled the hacking portion and video editing.

I made the video to be somewhat entertaining to keep full attention from the class.

## 🎥 Video Demonstration

**[📺 Watch Full 15-Minute Demonstration](https://www.youtube.com/watch?v=-cY53krsz2U&t=24s)**

## 🎯 Project Overview

This project demonstrates:
- WPA2 handshake capture techniques
- Dictionary attack methodology
- Wireless security assessment tools
- Security recommendations and best practices

**⚠️ Educational Purpose Only**: This demonstration was conducted in a controlled environment for educational purposes only. Only test networks you own or have explicit permission to assess.

## 🛠️ Tools and Environment

- **Operating System**: Kali Linux (Virtual Machine)
- **Hardware**: AWUS03ACH Wireless USB Adapter
- **Test Equipment**: TP-Link Archer A54 Router
- **Software**: aircrack-ng suite, rockyou.txt wordlist

## 📋 Methodology

1. **Network Discovery**: Scan for available wireless networks
2. **Target Selection**: Identify WPA2-protected test network
3. **Handshake Capture**: Monitor traffic and capture authentication handshake
4. **Dictionary Attack**: Test captured handshake against common passwords
5. **Analysis**: Document vulnerabilities and security implications

## 🔍 Key Findings

- **Handshake Capture Time**: ~13 minutes with 8,000+ beacons
- **Password Cracking Time**: <1 minute for weak password
- **Success Factor**: Password existed in common wordlist (rockyou.txt)
- **Vulnerability**: Dictionary attacks effective against weak passwords

## 🛡️ Security Implications

This assessment demonstrates that:
- WPA2 encryption remains mathematically strong
- Vulnerability exists in password selection, not the protocol
- Common passwords can be cracked quickly
- Strong, unique passwords provide effective protection

## 📚 Educational Value

This project illustrates:
- Practical penetration testing techniques
- Importance of strong password policies
- Real-world application of cybersecurity tools
- Ethical hacking methodology

## ⚖️ Ethical Considerations

- All testing performed on owned equipment
- Controlled environment with known test credentials  
- Educational purpose with security improvement goals
- Responsible disclosure principles followed

## 🚀 Skills Demonstrated

- Wireless protocol analysis
- Penetration testing methodology
- Linux command line proficiency
- Security assessment documentation
- Technical communication and presentation

---
*This project was completed as part of cybersecurity coursework at UNCW focusing on wireless network security assessment.*

Taylor Waldo, Landen Ramsey, Bennett Marsee, Dimitri Montgomey, Ellie Deskins, and Tyler Gwiazdowski.

Feel free to use, modify, and distribute this for educational purposes.
