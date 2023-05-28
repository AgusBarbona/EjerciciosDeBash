echo "¿Quieres borrar tareas?"
ls TareasDiarias.txt
read -p "Ingrese el nombre de la tarea que desea borrar: " tarea

if [ -f "TareasDiarias.txt" ]; then
    grep -Fxq "$tarea" TareasDiarias.txt
    if [ $? -eq 0 ]; then
        sed -i "/^$tarea$/d" TareasDiarias.txt
        echo "La tarea '$tarea' se eliminó correctamente."
    else
        echo "La tarea '$tarea' no existe en el archivo."
    fi
else
    echo "El archivo TareasDiarias.txt no existe."
fi
