#! /bin/bash
echo "¿Tenes tareas?"
read -p "Ingrese su tarea:" tarea
echo $tarea >> TareasDiarias.txt
echo "Su tarea se agrego correctamente a Diarias.txt"
