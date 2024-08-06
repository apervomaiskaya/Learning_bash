#!/bin/bash

for i in ya.ru vk.com google.com facebook.com twitter.com
do
    ping -c4 -q $i &> /dev/null && echo " $i is available!" || echo "$i is unreachable" 
done

for ((i=1; i<=10; i++)); do echo "Hello world"; done

for i in $(seq 1 10); do echo "Hello world"; done
