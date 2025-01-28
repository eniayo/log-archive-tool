Log Archive Tool
This project provides a CLI-based tool to efficiently archive logs, compress them, and manage their storage. Designed for Linux-based systems, the tool ensures logs are archived systematically to keep your server clean, organized, and running efficiently.

Features
Automated Archiving: Compresses logs into .tar.gz format with a timestamped filename.
Customizable Log Directory: Specify any log directory to archive logs, with /var/log as the default.
Timestamped Archives: Archives are named with the exact date and time for easy tracking.
Error Handling: Prompts the user to run with sudo for sufficient permissions when needed.
Additional Functionality:
Sends an email update upon successful archiving (optional).
Optional integration with a remote server or cloud storage for backup.
Benefits
Improved Server Performance: Frees up disk space by archiving old logs.
Ease of Use: Runs with simple CLI commands, suitable for both beginners and advanced users.
Flexibility: Easily extendable to integrate additional features like automated scheduling via cron.
Requirements
Operating System: Linux-based system
Tools:
Bash shell
curl (for future remote functionality)
Installation
Clone the Repository
bash
Copy
Edit
git clone https://github.com/eniayo/log-archive-tool.git
cd log-archive-tool
Make the Script Executable
bash
Copy
Edit
chmod +x log-archive.sh
Run the Script
To archive logs:

bash
Copy
Edit
sudo ./log-archive.sh /var/log
For directories other than /var/log, replace the path with your desired log directory.

Usage Instructions
Running the Script: The tool can be executed from the command line. Ensure the script is run with sudo to avoid permission issues for system directories like /var/log.

Example:

bash
Copy
Edit
sudo ./log-archive.sh /var/log
Log Archiving:

Archives all logs from the specified directory.
Saves them as compressed .tar.gz files in the archives directory.
The filename includes a timestamp, e.g., logs_archive_20250127_203450.tar.gz.
Error Handling: If run without sudo and permissions are insufficient, the script will prompt the user to re-run with proper privileges.
