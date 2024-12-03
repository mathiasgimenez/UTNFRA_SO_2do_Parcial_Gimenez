#!/bin/bash

# Primero hay que Crear un repositorio en Docker hub

# Edito el archivo index de docker
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/index.html << EOF
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Diciembre 2024 </h2> </br>
<h3> Gimenez Mathias</h3>
<h3> División: 311</h3>
</div>
EOF

# nos movemos al repo docker
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/

# Ejecutamos docker
docker run -d -p 80:80 -v "$PWD"/share/html:/usr/share/nginx/html nginx

# Creamos el archivo dockerfile
cat << EOF > dockerfile
FROM nginx
COPY static-html-directory /usr/share/nginx/html
EOF

# Creo el repositorio estatico
mkdir static-html-directory

# Movemos el archivo index a el repo static_html_directory
mv index.html static-html-directory/

# creamos una imagen
docker build -t "mathiidev/web1-gimenez" "/home/Mathias/UTN-FRA_SO_Examenes/202406/docker/"

# corro docker
docker run -d -p 8080:80 --name "nginx-container" "mathiidev/web1-gimenez"

## genero un token en Docker hub y me logeo 
docker login -u mathiidev
## token

docker push mathiidev/web1-gimenez:latest

