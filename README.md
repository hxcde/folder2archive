# Folder2Archive
> Daily Folder Backup and Rotation for Linux <br>
>I use this to create archives of my website every day

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
sh -c "$(curl -L http://script.moelle.space/folder2archive)"
```

## Settings

<details> 
<summary>Change the day count </summary>
<br>

Edit the file zip_folder_daily.sh `(If you used automatic install it's in /opt)` and change the day number in line 16.
<br> If you want 30 days, it's `30 minus 1`, so `29`
```bash
find "${ARCHIVE_DIR}" -name "folder_*.zip" -mtime +13 -exec rm {} \;
```
Example: Chamge the `13` to `29`
```bash
find "${ARCHIVE_DIR}" -name "folder_*.zip" -mtime +29 -exec rm {} \;
```
</details> 

<details> 
<summary>Change the schedule </summary>
<br>

Edit the cronjob with `crontab -e` 
```bash
0 13 * * * sh /path/to/script/zip_folder_daily.sh
```
If you need help to configure the crontab, check this site https://crontab.guru/

</details> 

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
git clone https://git.moelle.space/hxcde/folder2archive.git
```
Edit the zip_folder_daily.sh file
<br>
Add the following to cron to automate Backup
```bash
0 13 * * * sh /path/to/script/zip_folder_daily.sh
```
</details> 