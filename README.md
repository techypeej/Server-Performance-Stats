# Server Performance Stats 📊
PROJECT BY GIVEN BY: https://roadmap.sh/projects/server-stats

A lightweight Bash script designed to provide a quick snapshot of Linux server health. This tool automates the collection of vital system metrics, making it easier for DevOps beginners and SysAdmins to monitor resources.



## 🚀 Features
- **CPU Usage:** Calculates total system CPU utilization.
- **Memory Analysis:** Displays Free vs. Used RAM with percentage calculations (dynamically scales to your server size).
- **Disk Monitoring:** Reports Used and Free space percentages for all mounted filesystems.
- **Top 5 CPU Consumers:** Lists the top 5 processes by CPU usage, grouping multiple threads (like Chrome/YouTube) into a single total.
- **Top 5 Memory Consumers:** Identifies the biggest RAM-hungry applications.

## 🛠️ Installation & Usage

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/techypeej/Server-Performance-Stats.git](https://github.com/techypeej/Server-Performance-Stats.git)
   cd Server-Performance-Stats

2. Give execution permissions:
   chmod +x server-stats.sh

3. Run the script:
   ./server-stats.sh
