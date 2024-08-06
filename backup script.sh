#!/bin/bash

cd ~/Learn
filename="backup_$(date +"%Y-%m-%d").tar.gz" 
tar -czvf  ~/Learn/Devops/"$filename" .
