#!/bin/bash

read -p "Пожалуйста, введите пароль: " password
until [ $password = "secure123" ];
do
    read -p "Пожалуйста, введите пароль: " password
done
echo "Пароль правильный"
