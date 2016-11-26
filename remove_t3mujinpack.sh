#!/bin/sh
# Removes all t3mujinpack styles from Darktable database.
#
# Author: João Almeida <info@joaoalmeidaphotography.com>


echo ""
echo "t3mujinpack - Film emulation presets for Darktable 2.0.x"

database_file=$1

if [ "$database_file" = "" ]
then
	echo ""
	database_file="~/.config/darktable/library.db"	
	echo "No database file defined, using default library database"
	
fi


if [ ! -x "`which "darktable"`" ]
then
    	echo ""
	echo "Darktable was not found. Is it really installed?"
	echo ""
fi

# echo ""
# echo "Currently installed t3mujinpack styles in $database_file"
# echo ""

# output=$(sqlite3 library_dev.db "select name from styles where name like 't3mujin - %'")

# echo $output

echo ""
echo "Removing currently installed t3mujinpack styles in $database_file"
$(sqlite3 $database_file "delete from style_items where style_items.styleid in ( select id from styles where name like 't3mujin - %')")
$(sqlite3 $database_file "delete from styles where name like 't3mujin - %'")

echo ""
echo "Done!"
echo ""
 
