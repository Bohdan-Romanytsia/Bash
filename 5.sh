#! /bin/bash
ls '/home/ubuntu/.config'  > /home/ubuntu/text1.txt
filename=$(diff text2.txt text1.txt)
echo $filename
arr=($filename)
a=${arr[5]}
echo $a
cp -r /home/ubuntu/back/$a /home/ubuntu/.config
ls '/home/ubuntu/.config'
