#!/bin/bash

# Parametro 1. usuario de referencia que se obtendra la contraseña 
# Mathias
usuario_referencia=$1

# Parametro 2. ruta donde se colocaran los usuarios creados
# /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ruta_lista_usuarios=$2 

# Guardo la contraseña de mi usuario en una variable para despues colocarla en los otros usuarios
contra_usuarios=$(sudo grep "$usuario_referencia" /etc/shadow | awk -F ':' '{print $2}')

# Obtengo los usuarios del archivo lista_usuarios 
usuario_Prog1=$(grep Prog1 $ruta_lista_usuarios | awk -F ',' '{print $1}')
usuario_Prog2=$(grep Prog2 $ruta_lista_usuarios | awk -F ',' '{print $1}')
usuario_Test1=$(grep Test1 $ruta_lista_usuarios | awk -F ',' '{print $1}')
usuario_Supervisor=$(grep Supervisor $ruta_lista_usuarios | awk -F ',' '{print $1}')

# Obtengo los grupos del archivo lista_usuarios
grupo_desarrolladores=$(grep Prog1 $ruta_lista_usuarios | awk -F ',' '{print $2}')
grupo_testers=$(grep Test1 $ruta_lista_usuarios | awk -F ',' '{print $2}')
grupo_supervisores=$(grep Supervisor $ruta_lista_usuarios | awk -F ',' '{print $2}')

# Obtengo los directorios home del archivo
home_usuario_Prog1=$(grep Prog1 $ruta_lista_usuarios | awk -F ',' '{print $3}')
home_usuario_Prog2=$(grep Prog2 $ruta_lista_usuarios | awk -F ',' '{print $3}')
home_usuario_Test1=$(grep Test1 $ruta_lista_usuarios | awk -F ',' '{print $3}')
home_usuario_Supervisor=$(grep Supervisor $ruta_lista_usuarios | awk -F ',' '{print $3}')

# Creacion de los grupos
sudo groupadd $grupo_desarrolladores
sudo groupadd $grupo_testers
sudo groupadd $grupo_supervisores

# Creación de usuarios
sudo useradd -m -d "$home_usuario_Prog1" -s /bin/bash -c "Usuario Prog1" -G $grupo_desarrolladores -p "$contra_usuarios" $usuario_Prog1
sudo useradd -m -d "$home_usuario_Prog2" -s /bin/bash -c "Usuario Prog2" -G $grupo_desarrolladores -p "$contra_usuarios" $usuario_Prog2
sudo useradd -m -d "$home_usuario_Test1" -s /bin/bash -c "Tester" -G $grupo_testers -p "$contra_usuarios" $usuario_Test1
sudo useradd -m -d "$home_usuario_Supervisor" -s /bin/bash -c "Supervisor" -G $grupo_supervisores -p "$contra_usuarios" $usuario_Supervisor
