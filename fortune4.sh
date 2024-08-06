#!/bin/bash
for ((y=1; y<=10; y++)); do
echo $y $(fortune) >> file_with_fortune1.txt;
done
