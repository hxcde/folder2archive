# Folder archive
> Daily Folder Backup and Rotation for Linux

## Key Features:
- Daily automated backups of a specified folder using the zip utility.
- Date-appended archive file names for easy identification.
- Automatic removal of backups older than 14 days.
- Scheduled execution using cron for a hands-off approach.

## Explanation:
- The script sets the source directory (SOURCE_DIR) that will be zipped and the archive directory (ARCHIVE_DIR) where the zipped files will be stored.
- It creates a timestamp in the format YYYY-MM-DD and stores it in the DATE variable.
- The zip command is used to create the zipped archive and append the date to the file name.
- The find command is used to delete files older than 14 days in the archive directory. (edit in the script as needed)
- The cron entry schedules the script to run daily at 13:00 (1 PM).

<details> 
<summary>Automatic installation </summary>

## Automatic installation
```bash
sh -c "$(curl -L https://git.moelle.space/hxcde/folderarchive/raw/branch/main/install.sh)"
```
</details> 

<details> 
<summary>Manual installation </summary>

## Manual installation
Install git and zip
```bash
apt install git zip -y
```
Clone the repository
```bash
git clone https://git.moelle.space/hxcde/folderarchive.git
```
Add the following to cron to automate Backup
```bash
0 13 * * * sh /path/to/script/zip_folder_daily.sh
```
</details> 