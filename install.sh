#!/bin/bash

# Comprobar si el paquete git está instalado
if ! dpkg -l | grep -q "git"; then
    echo "El paquete git no está instalado. Instalándolo..."
    sudo apt update
    sudo apt install git -y
    if [ $? -eq 0 ]; then
        echo "Git se ha instalado correctamente."
    else
        echo "Error al instalar Git."
    fi
else
    echo "Git ya está instalado."
fi

# Comprobar si el directorio ~/bin existe y, si no existe, crearlo
if [ ! -d "$HOME/bin" ]; then
    echo "El directorio ~/bin no existe. Creándolo..."
    mkdir "$HOME/bin"
    echo "Directorio ~/bin creado."
else
    echo "El directorio ~/bin ya existe."
fi

# Copiar archivos
cp autogit.sh ~/bin/autogit
cp fastgit.sh ~/bin/fastgit
echo "Utilerías para GitHub instaladas"

# Define los archivos a buscar
files=(~/.bashrc ~/.zshrc ~/.kshrc ~/.tcshrc)

# Define el comentario y la línea a agregar
comment="# Añadir ~/bin al PATH"
line_to_add="export PATH=\"\$HOME/bin:\$PATH\""

# Recorre cada archivo
for file in "${files[@]}"; do
    # Verifica si el archivo existe
    if [[ -f $file ]]; then
        # Agrega el comentario y la línea al final del archivo
        echo "$comment" >> $file
        echo "$line_to_add" >> $file
        echo "El archivo $file fue modificado."
    fi
done
