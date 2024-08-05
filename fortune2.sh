#!/bin/bash

fortune | head -n 20 > textfile.txt
cat textfile.txt
nl textfile.txt > numbered_textfile.txt
cat numbered_textfile.txt


