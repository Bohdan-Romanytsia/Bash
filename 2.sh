#!/bin/bash
echo 'Enter a filename, please'    
read filename
read -a strarr <<< "$filename"
for (( i=0; i < ${#strarr[*]}; i++))
do
file="${strarr[i]}"
    if [ -f "$file" ]
        then
            ls -l "$file"
    fi
done
