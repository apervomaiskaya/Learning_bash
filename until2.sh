#!/bin/bash

while read line 
do
    if [ "$line" = "Quote2"  ]
        then
        break
    fi
echo $line
done < pale_fire.txt