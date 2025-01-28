#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
	echo"Please run the script as root using sudo"
	exit 1
fi

# Check if log directory is provided
if [ -z "$1" ]; then
  echo "Usage: log-archive <log-directory>"
  exit 1
fi

LOG_DIR=$1

# Validate the log directory
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Directory $LOG_DIR does not exist."
  exit 1
fi

# Create an archive directory if it doesn't exist
ARCHIVE_DIR="archives"
if [ ! -d "$ARCHIVE_DIR" ]; then
  mkdir "$ARCHIVE_DIR"
fi

# Generate timestamp and archive name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Compress logs into tar.gz format
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" . || {
  echo "Error: Failed to compress logs."
  exit 1
}

# Log the archive activity
LOG_FILE="archive_log.txt"
echo "${TIMESTAMP}: Archived logs from ${LOG_DIR} to ${ARCHIVE_PATH}" >> "$LOG_FILE"

# Notify the user
echo "Logs have been archived to ${ARCHIVE_PATH}"

