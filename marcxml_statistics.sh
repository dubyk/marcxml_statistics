xml_file=Marc21Export_edited.txt_MARC21.xml

folder=$xml_file"_statistics"

rm $folder/statistics.html
rm $folder/lists/*.csv
rm $folder/popularity_lists/*.csv
rm $folder/sorted_lists/*.csv

rmdir $folder/lists
rmdir $folder/popularity_lists
rmdir $folder/sorted_lists
rmdir $folder

perl ./marcxml_statistics.pl $xml_file unimarc > marcxml_statistics.LOG.txt

# Arguments: 1st - first source (folder with files or file) of marcxml records
#            2nd - marc-format (unimarc or marc21)

#beep -r 3

#echo -e "\007" >/dev/tty10
#sleep 0.2
#echo -e "\007" >/dev/tty10
#sleep 0.2
#echo -e "\007" >/dev/tty10

