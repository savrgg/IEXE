#!/bin/bash

if [[ $1 -lt 100 ]] 
    then echo "El numero $1 es menor al rango permitido, el numero ingresado tiene que ser mayor a 99 y menor a 1001"
elif [[ $1 -gt 1000 ]] 
    then echo "El numero $1 es mayor al rango permitido, el numero ingresado tiene que ser mayor a 99 y menor a 1001"
elif [[ $2 -lt 100 ]]
    then echo "El numero $2 es menor al rango permitido, el numero ingresado tiene que ser mayor a 99 y menor a 1001"
elif [[ $2 -gt 1000 ]]
    then echo "El numero $2 es mayor al rango permitido, el numero ingresado tiene que ser mayor a 99 y menor a 1001"
else
sum_par=0
count_tres=0

for (( i = $1; i < $2; i++ ))
do
    if [[ $(($i % 2)) -eq 1 ]]
    then sum_par=$((sum_par+i))
    fi
    
    if [[ $(($i % 3)) -eq 0 ]]
    then count_tres=$((count_tres+1))
    fi
    
done

echo "La suma de los numeros impares en la secuencia de $1 a $2 es de: $sum_par"
echo "El numero de elementos multiplos de 3 en la secuencia de $1 a $2 es de: $count_tres"

fi





