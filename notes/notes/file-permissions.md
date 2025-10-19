# 🔐 File Permissions & Ownership

Understanding Linux permissions is critical in pentesting — misconfigured permissions can lead to privilege escalation.

## 🧰 Checking Permissions
```bash
ls -l

## Example
-rwxr-xr-- 1 user group 1234 Oct 19 file.sh
| Section | Meaning                        |
| ------- | ------------------------------ |
| `-rwx`  | Owner can read, write, execute |
| `r-x`   | Group can read, execute        |
| `r--`   | Others can only read           |

✍️ Changing Permissions
|chmod 755 file.sh   # rwxr-xr-x              |
|chmod +x script.sh  # Add execute permission |

👑 Changing Ownership
sudo chown user:group filename

---

### 📄 `notes/process-management.md`
```markdown
# ⚙️ Process Management

Managing processes helps monitor services and detect suspicious activity during engagements.

## 🔍 Viewing Processes
```bash
ps aux
top
htop


🛑 Stopping Processes
kill [PID]
kill -9 [PID]   # force kill

🧠 Useful Commands

systemctl status [service] — Check service status

service [service] start|stop|restart — Manage services


---

## 🧠 **2. Starter Templates for `scripts/` Folder**

### 🧰 `scripts/sysinfo.sh`
```bash
#!/bin/bash
# 🐧 System Information Script
# Simple script to display basic system info for recon or setup

echo "=== SYSTEM INFORMATION ==="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Logged in users:"
who
echo "Disk usage:"
df -h | grep -v tmpfs


