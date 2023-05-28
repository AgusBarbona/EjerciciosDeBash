#!/bin/bash

echo "¿Quieres borrar tareas?"
echo "Contenido de TareasDiarias.txt:"
cat TareasDiarias.txt

read -p "Ingrese la tarea que quiera borrar: " tarea

if grep -q "$tarea" TareasDiarias.txt; then
    sed -i "/$tarea/d" TareasDiarias.txt
    echo "Tarea  eliminada correctamente de TareasDiarias.txt."
else
    echo "La tarea  no existe en TareasDiarias.txt."
fi
