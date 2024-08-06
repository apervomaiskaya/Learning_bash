#!/bin/bash

#find /usr -type f -name "*.sh"
find /usr -type f -executable

# Найти все файлы в директории /usr
files=$(find /usr -type f)

# Цикл по всем найденным файлам
for file in $files; do
    # Проверить, является ли файл исполняемым
    if test -x "$file"; then
        echo "$file"
    fi
done