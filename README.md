# Log Archive Tool

A CLI utility for compressing and managing log files on Linux systems.

## Features

- 🕒 Timestamped archive names (YYYYMMDD_HHMMSS format)
- 📂 Defaults to `/var/log` with support for custom directories
- 🔒 Automatic root privilege check
- 📦 Creates compressed tar.gz archives
- 📁 Automatic archive directory creation

## Installation

1. Clone repository:
```bash
git clone https://github.com/eniayo/log-archive-tool.git
cd log-archive-tool
Make script executable:

bash
Copy
chmod +x log-archive.sh
Usage
Archive default directory (/var/log):

bash
Copy
sudo ./log-archive.sh
Custom log directory:

bash
Copy
sudo ./log-archive.sh /path/to/logs
Show help:

bash
Copy
./log-archive.sh --help
Archive Structure
Archives are stored in:

Copy
./archives/
└── logs_archive_20230101_120000.tar.gz
