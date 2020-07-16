#!/bin/bash
echo 'Enter a filename, please'
read filename
file='$filename'
if [[ -n '$filename' && '$filename' != *' '* ]]; then
	echo 'Yes, you did everything right'
	if [ -e '$file' ]; then
    	echo 'Your file exists'    
    	if [ -f '$file' ]; then
        	echo '$file is a regular file.'
        	chmod a+x $filename
        	ls -al $filename
    	else
        	echo '$file is not a regular file.'
    	fi
	else
    	echo 'File is not exist'
	fi
else 
    echo 'You should enter only one argument'
fi
