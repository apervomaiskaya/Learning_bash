#!/bin/bash

echo "Справка. Вам нужно ввести 2 аргумента: 1-ый - название первого файла, 
который затем будет удалён. 
2-ой аргумент - название второго файла, в который копируется первый файл"

echo ""

# Проверка, что передано ровно 2 аргумента
if [ $# -ne 2 ]; then
    echo "Ошибка! Вам нужно ввести 2 аргумента. См. справку"
    exit 1
fi

# Проверка, что первый аргумент является файлом
if [ ! -f "$1" ]; then
    echo "Ошибка! Аргумент \"$1\" не является файлом"
    exit 1
fi

# Проверка, что второй аргумент является файлом
if [ ! -f "$2" ]; then
    echo "Ошибка! Аргумент \"$2\" не является файлом"
    exit 1
fi

# Копирование первого файла во второй
cp "$1" "$2"
if [ $? -ne 0 ]; then
    echo "Ошибка при копировании файла"
    exit 1
fi
echo "$1 скопирован"

# Удаление первого файла
rm "$1"
if [ $? -ne 0 ]; then
    echo "Ошибка при удалении файла"
    exit 1
fi
echo "$1 удален"
