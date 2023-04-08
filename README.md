# folderarchive
Daily Folder Backup and Rotation for Linux

## Explanation:
The script sets the source directory (SOURCE_DIR) that will be zipped and the archive directory (ARCHIVE_DIR) where the zipped files will be stored.
It creates a timestamp in the format YYYY-MM-DD and stores it in the DATE variable.
The zip command is used to create the zipped archive and append the date to the file name.
The find command is used to delete files older than 14 days in the archive directory.
The cron entry schedules the script to run daily at 13:00 (1 PM).
