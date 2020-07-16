#!/bin/bash
echo 'Maybe script was executed correctly, the rezults you can find in /home/text.txt'
crontab -l > firstcron
echo '59 23 * * 5 /home/ubuntu/3.sh' >> firstcron
crontab firstcron
rm firstcron
currentdate=`date`
echo $currentdate >> $HOME/text.txt
find $HOME -maxdepth 1 -mindepth 1 -type d | while read directory; 
do
  filename=$(basename "$directory")	
  counter=$(find "$directory" -type f,d | wc -l)
  echo $filename $(($counter-1)) >> $HOME/text.txt
done