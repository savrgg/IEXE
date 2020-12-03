#!/usr/local/bin/bash

if [[ $1 = "nomina" ]]
then echo "nomina: eliminar los nombres de empleados"
elif [[ $1 =  "ventas" ]]
then echo "ventas: sumamos la columna total"
elif [[ $1 = "clientes" ]]
then echo "clientes: contamos el numero de renglones"
else
  echo "no es nomina, ni ventas, ni clientes, es $1"
fi
