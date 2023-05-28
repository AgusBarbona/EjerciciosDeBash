#!/bin/bash
cat TareasDiarias.txt
echo "Ingrese la cantidad de tareas que desea eliminar:"
read cantidad

num_tareas=$(wc -l < TareasDiarias.txt)

if (( cantidad > num_tareas )); then
    echo "La cantidad de tareas a eliminar supera el número total de tareas. No se realizará ninguna eliminación."
    exit 1
fi > tareasDiarias_tmp.txt


lineas_preservar=$((num_tareas - cantidad))


head -n "$lineas_preservar" TareasDiarias.txt >> tareasDiarias_tmp.txt


mv tareasDiarias_tmp.txt TareasDiarias.txt

echo "Se han eliminado las últimas $cantidad tareas del archivo TareasDiarias.txt."

