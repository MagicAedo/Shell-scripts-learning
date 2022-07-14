#!/usr/bin/bash

#Unrar or/and unzip several files with unrar and unzip cli
for FILE in * 
do 
	
	CURRENT=$(echo $FILE | cut -d "." -f2)
	# FILE=$(echo $FILE | sed 's/ /\\ /g'); Eliminado porque así no se manipulaba los caracteres 
	if [ $CURRENT == "rar" ] 
	then
		FOLDER=$(echo $FILE | cut -d "." -f 1 | sed 's/ //g');
		mkdir "$FOLDER"
		unrar x "$FILE" "$FOLDER" 
	elif [ $CURRENT == "zip" ]
	then
		FOLDER=$(echo $FILE | cut -d "." -f 1 | sed 's/ //g');
		mkdir "$FOLDER"
		unzip "$FILE" -d "$FOLDER"
	fi


		
done
