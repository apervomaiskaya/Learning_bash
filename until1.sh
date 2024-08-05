#!/bin/bash

until cat report.txt 
do
echo "waiting for report.txt"
sleep 5
done





