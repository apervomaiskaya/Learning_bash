#!/bin/bash

# ls -la *.jpeg
# ls -la *
# ls -la *.???x
find /var/log -type f | wc -l 

cp -r $1 $2
rm -r f $1
