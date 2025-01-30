# Log Archive Tool

A CLI utility for compressing and managing log files on Linux systems.

## Features

- 🕒 **Timestamped archive names** (YYYYMMDD_HHMMSS format)
- 📂 **Defaults to `/var/log`** with support for custom directories
- 🔒 **Automatic root privilege check**
- 📦 **Creates compressed `tar.gz` archives**
- 📁 **Automatic archive directory creation**

## Installation

### Clone Repository:

```bash
# Clone the repository
git clone https://github.com/eniayo/log-archive-tool.git
cd log-archive-tool
```

### Make Script Executable:

```bash
# Grant execution permissions
chmod +x log-archive.sh
```

## Usage

### Archive Default Directory (`/var/log`):

```bash
# Run script with sudo for default log directory
sudo ./log-archive.sh
```

### Archive a Custom Log Directory:

```bash
# Specify a custom directory for logs
sudo ./log-archive.sh /path/to/logs
```

### Show Help:

```bash
# Display usage instructions
./log-archive.sh --help
```

## Archive Structure

Archives are stored in the following format:

```
./archives/
└── logs_archive_YYYYMMDD_HHMMSS.tar.gz
```

Example:

```
./archives/
└── logs_archive_20230101_120000.tar.gz
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
