# DevOps Environment Setup & Management Assignment

## Overview
This repository contains the implementation for setting up and managing a secure, monitored, and well-maintained development environment as part of a DevOps assignment.

The objective of this project is to assist a Senior DevOps Engineer in:
- Monitoring system performance
- Managing user access securely
- Automating and verifying backups for web servers

The environment is configured for two developers:
- **Sarah** – Apache Web Server
- **Mike** – Nginx Web Server

---

## Tasks Implemented

### Task 1: System Monitoring Setup
Configured system monitoring tools to ensure visibility into system health and performance.

**Tools & Commands Used:**
- `htop` / `nmon` for CPU, memory, and process monitoring
- `df -h` for disk usage
- `du -sh` for directory-level storage analysis
- `ps` for identifying resource-intensive processes

**Logging:**
- System metrics are logged in:
<img width="975" height="202" alt="image" src="https://github.com/user-attachments/assets/8fa85239-40a1-4f34-a0e9-93eb3c76933a" />

<img width="975" height="492" alt="image" src="https://github.com/user-attachments/assets/07039594-d517-46eb-9337-c04e464198f6" />

/var/log/system_monitoring/metrics.log


---

### Task 2: User Management and Access Control
Created secure user accounts with isolated workspaces and enforced password policies.

**Users Created:**
- `sarah`
- `mike`

**Workspace Directories:**
- Sarah: `/home/sarah/workspace`
- Mike: `/home/mike/workspace`

**Security Controls:**
- Directory permissions set to `700`
- Ownership restricted to respective users
- Password expiration enforced every **30 days**
- Password warning enabled before expiry


<img width="975" height="740" alt="image" src="https://github.com/user-attachments/assets/b3308c37-2d28-4958-9334-14b7ebe36e70" />

<img width="975" height="439" alt="image" src="https://github.com/user-attachments/assets/5747448e-cfac-4cec-b66f-ce41e79f6329" />

<img width="760" height="103" alt="image" src="https://github.com/user-attachments/assets/6285652c-191e-4314-b2b3-aa020576b547" />

---

### Task 3: Backup Configuration for Web Servers
Automated backups for Apache and Nginx servers with scheduled cron jobs and integrity verification.

#### Apache Backup (Sarah)
- Configuration: `/etc/httpd/`
- Document Root: `/var/www/html/`
- Script: `apache_backup.sh`

#### Nginx Backup (Mike)
- Configuration: `/etc/nginx/`
- Document Root: `/usr/share/nginx/html/`
- Script: `nginx_backup.sh`

**Backup Schedule:**
- Every **Tuesday at 12:00 AM**
- Managed via `cron`

**Backup Location:**
<img width="935" height="800" alt="image" src="https://github.com/user-attachments/assets/2b6cc40e-9de9-4c0b-b9df-cc164ec39d4b" />

**Cron Job Configuration**
$ sudo crontab -l
0 0 * * 2 /usr/local/bin/apache_backup.sh
0 0 * * 2 /usr/local/bin/nginx_backup.sh






**All scripts, logs, and documentation are available in this repository.**
