#!/bin/bash

echo "¿Tienes Tareas Nuevas?"
echo "Tareas actuales en TareasDiarias.txt:"
cat TareasDiarias.txt

read -p "Ingrese la tarea que quiere agregar: " tarea
echo "$tarea" >> TareasDiarias.txt
echo "Su tarea se agregó correctamente a TareasDiarias.txt"

echo "Tareas actualizadas en TareasDiarias.txt:"
