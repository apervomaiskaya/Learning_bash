#!bin/bash

#i=10
#while [ $i -le 20 ]; do    
#    t=$(echo "$i^2" | bc)
#    echo "Число равно: "$i", Квадрат числа равен: $t"
#    i=$((i + 1))
#done


for i in {10..20}
do 
    t=$(( i * i ))
    echo "Число равно: "$i", Квадрат числа равен: $t"
done
