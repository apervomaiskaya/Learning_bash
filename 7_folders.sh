#!/bin/bash

num=0
while [ $num -lt 7 ]
do
    mkdir /tmp/directory-$(date "+%Y%m%d%_%H%M")
    num=$(expr $num + 1)
    sleep 420
done










