#!/bin/bash
echo checking if Zip is installed
apt-get install zip -y
#yum install zip -y
#apk add zip
cd /opt/
echo "#!/bin/bash" > zip_folder_daily.sh
echo "#Enter the directory to be zipped (e.g., /path/to/folder)" >> zip_folder_daily.sh
echo "Enter the directory to be zipped (e.g., /path/to/folder)"
read path
echo "SOURCE_DIR='"$path"'" >> zip_folder_daily.sh
echo "# Enter the directory where the zipped files will be stored (e.g., /path/to/archive)" >> zip_folder_daily.sh
echo "Enter the directory where the zipped files will be stored (e.g., /path/to/archive)"
read archive
echo "ARCHIVE_DIR='"$archive"'" >> zip_folder_daily.sh
curl https://git.moelle.space/hxcde/folder2archive/raw/branch/main/append >> zip_folder_daily.sh
sh /opt/zip_folder_daily.sh

crontab -l > mycron
echo "0 13 * * * sh /opt/zip_folder_daily.sh" >> mycron
crontab mycron
rm mycron