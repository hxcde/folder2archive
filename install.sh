cd /opt/
git clone https://git.moelle.space/hxcde/folderarchive.git
chmod +x /folderarchive/zip_folder_daily.sh
crontab -l > mycron
echo "0 13 * * * sh /opt/folderarchive/zip_folder_daily.sh" >> mycron
crontab mycron
rm mycron