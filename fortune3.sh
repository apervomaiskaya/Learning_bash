#!/bin/bash

num=0
while [ $num -lt 10 ]
    do
    num=$(expr $num + 1)
    #rem=$(( $num % 2 ))

    #if [ $rem -eq 0 ]
    #then
    echo $num $(fortune)
#else
#    continue
#    fi
    done

for ((y=1; y<=10; y++)); do
echo $y $(fortune);
done
