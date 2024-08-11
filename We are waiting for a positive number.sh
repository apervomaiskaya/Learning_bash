#!/bin/bash

entering_an_integer() {read -p "Пожалуйста, введите целое число: " num

until [ $num -gt 0 ]; do
    echo "Ошибка! Введите число больше нуля."
    read -p "Пожалуйста, введите целое число: " num     
done

echo "Спасибо!"}
