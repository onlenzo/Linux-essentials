# 🕵️ Nmap Cheatsheet

A quick reference guide for essential Nmap commands used during penetration testing.

## 🔍 Basic Scans
```bash
nmap 192.168.1.1            # Default scan
nmap -sV 192.168.1.1        # Service version detection
nmap -A 192.168.1.1         # Aggressive scan

📡 Port Scanning
nmap -p 1-65535 192.168.1.1     # Full port scan
nmap -p 80,443 192.168.1.1      # Specific ports

🧠 Tips

Use -Pn to skip host discovery (useful for firewalled targets)

Always get permission before scanning ⚠️
