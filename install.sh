#!/bin/bash

cd /opt/
echo "#!/bin/bash" > zip_folder_daily.sh
echo "#Enter the directory to be zipped (e.g., /path/to/folder)" >> zip_folder_daily.sh
echo "Enter the directory to be zipped (e.g., /path/to/folder)"
read path
echo "SOURCE_DIR=""$path""" >> zip_folder_daily.sh
echo "# Enter the directory where the zipped files will be stored (e.g., /path/to/archive)" >> zip_folder_daily.sh
echo "Enter the directory where the zipped files will be stored (e.g., /path/to/archive)"
read archive
echo "ARCHIVE_DIR=""$archive""" >> zip_folder_daily.sh
echo "DATE=$(date +%Y-%m-%d)" >> zip_folder_daily.sh
echo "zip -r "${ARCHIVE_DIR}/folder_${DATE}.zip" "${SOURCE_DIR}"" >> zip_folder_daily.sh
echo "find "${ARCHIVE_DIR}" -name "folder_*.zip" -mtime +13 -exec rm {} \;" >> zip_folder_daily.sh


#crontab -l > mycron
#echo "0 13 * * * sh /opt/folderarchive/zip_folder_daily.sh" >> mycron
#crontab mycron
#rm mycron