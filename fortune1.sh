#!/bin/bash
while true 
do
    echo "Who do you want advice from?"
    cat << options
bunny
tux
daemon
kitty
vader-koala

Print "quit" to exit
options

echo
read -p "Make your choice: " option
if [ $option == "quit" ]
then
    break
fi

echo 
fortune | cowsay -f $option
done

