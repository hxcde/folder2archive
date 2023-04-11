#!/bin/bash

# Directory to be zipped (e.g., /path/to/folder)
SOURCE_DIR="/path/to/folder"

# Directory where the zipped files will be stored (e.g., /path/to/archive)
ARCHIVE_DIR="/path/to/archive"

# Create a timestamp in the format YYYY-MM-DD
DATE=$(date +%Y-%m-%d)

# Create the zipped archive and append the date
zip -r "${ARCHIVE_DIR}/folder_${DATE}.zip" "${SOURCE_DIR}"

# Delete files older than 14 days (change the number)
find "${ARCHIVE_DIR}" -name "folder_*.zip" -mtime +13 -exec rm {} \;
