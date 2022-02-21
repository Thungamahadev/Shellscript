#!/bin/bash
To= "thungamahadev326@gmail.com"
size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then 
	echo "Sending mail to your Email"
	mail -s "memory reached 20%, Please take appropriate action" thungamahadev326@gmail.com
else
echo "Disk is good"	
fi
