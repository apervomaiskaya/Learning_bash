#!/bin/bash

i=1
until [ $i -gt 20 ]; do
    if (( $i % 2 == 0 )); 
        then echo "$i"
    fi
    ((i++))
done
