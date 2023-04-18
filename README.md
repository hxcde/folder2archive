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

## Automatic installation

Paste the script in your machines console.
```bash
sh -c "$(curl -L http://script.moelle.space/folderarchive)"
```



## Manual installation
<details> 
<summary>Installation </summary>
<br>

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

<details> 
<summary>Change the day count </summary>
<br>

Edit the zip_folder_daily.sh in `/opt` and the change number in the following line.
> find "${ARCHIVE_DIR}" -name "folder_*.zip" -mtime +`13` -exec rm {} \;

</details> 