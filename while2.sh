#!/bin/bash

i=0

while [ $i -lq 10 ];
do
    touch $i
    i=$((i+1))
done

