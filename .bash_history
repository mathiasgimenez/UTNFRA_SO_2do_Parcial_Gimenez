git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
git config --global user.name "Mathias"
git config --global user.email "gimenezmathias2021@gmail.com"
ssh-keygen -t rsa -b 4096 -C "gimenezmathias2021@gmail.com"
cat ~/.ssh/id_rsa.pub
git clone git@github.com:mathiasgimenez/UTNFRA_SO_2do_Parcial_Gimenez.git
ls
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker $(whoami)
exit
id
fdisk -l
sudo fdisk -l
exit
id
sudo fdisk -l
sudo lvs
sudo lsblk -l
sudo systemctl restart docker
sudo systemctl status Docker
id
docker --version
docker info
docker --version
ls /usr/lib/systemd/system/docker.service
sudo systemctl daemon-reload
sudo systemctl start docker
sudo systemctl status docker
cat /etc/fstab
sudo vgs
sudo fdisk -l
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/index.html << EOF
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Diciembre 2024 </h2> </br>
<h3> Gimenez Mathias</h3>
<h3> División: 311</h3>
</div>
EOF

cat /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/index.html
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/
docker run -d -p 80:80 -v "$PWD"/share/html:/usr/share/nginx/html nginx
cat << EOF > dockerfile
FROM nginx
COPY static-html-directory /usr/share/nginx/HTML
EOF

cat dockerfile 
mkdir static-html-directory
ls
mv index.html static-html-directory/
docker build -t "mathiidev/web1-gimenez" "/home/Mathias/UTN-FRA_SO_Examenes/202406/docker/"
docker run -d -p 8080:80 --name "nginx-container" "mathiidev/web1-gimenez"
ls
cat << EOF > dockerfile
FROM nginx
COPY static-html-directory /usr/share/nginx/html
EOF

cat dockerfile 
docker build -t mathiidev/web1-gimenez /home/Mathias/UTN-FRA_SO_Examenes/202406/docker/
docker run -d -p 8080:80 --name nginx-container mathiidev/web1-gimenez
docker stop nginx-container
docker rm nginx-container
docker run -d -p 8080:80 --name nginx-container mathiidev/web1-gimenez
docker login -u mathiidev
docker push mathiidev/web1-gimenez:tagname
docker push mathiidev/web1-gimenez:pagina-segundo-parcial
docker push mathiidev/web1-gimenez:lates
docker push mathiidev/web1-gimenez:latest
cd
ls
cd RTA_Examen_20241203/
LS
ls
vim Punto_A.sh 
a
cd /usr/local/bin/
sudo touch GimenezAltaUser-Groups.sh
ls
sudo chmod 777 GimenezAltaUser-Groups.sh
cd
touch /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo grep "Mathias" /etc/shadow | awk -F ':' '{print $2}'
cat /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /home/Mathias/
ls
CD RTA_Examen_20241203/
cd RTA_Examen_20241203/
ls
chmod 777 Punto_A.sh 
chmod 777 Punto_B.sh 
chmod 777 Punto_C.sh 
chmod 777 Punto_D.sh 
ls -l
vim Punto_B.sh 
./Punto_B.sh Mathias /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls /home/
sudo ./Punto_B.sh Mathias /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls /home/
vim Punto_B.sh 
cd  /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/bash_script/
ls
cat Lista_Usuarios.txt 
ls
cd ..
ls
cd /home/Mathias/
ls
cd RTA_Examen_20241203/
ls
vim Punto_B.sh 
cd /work/
ls
ls 2P_202406_Prog
ls 2P_202406_Prog1
ls -l
cd 2P_202406_Prog1
sudo cd 2P_202406_Prog1
cd ..
cd home/Mathias/RTA_Examen_20241203/
vim Punto_B.sh 
su -Prog1
su -2P_202406_Prog1
su - 2P_202406_Prog1
su -c 2P_202406_Prog1
vim Punto_A.sh 
cat Punto_A.sh 
vim Punto_C.sh 
cd
ls /home/
su - root
id
ls
cd RTA_Examen_20241203/
cd
cp /home/Mathias/RTA_Examen_20241203/Punto_A.sh /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
cp /home/Mathias/RTA_Examen_20241203/Punto_B.sh /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
cp /home/Mathias/RTA_Examen_20241203/Punto_C.sh /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
cp /home/Mathias/RTA_Examen_20241203/Punto_D.sh /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
ls -l /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
ls -l /home/Mathias/RTA_Examen_20241203/
rm /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/Punto_A.sh 
rm /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/Punto_B.sh 
rm /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/Punto_C.sh 
rm /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/Punto_D.sh 
ls -l /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
tree
sudo apt update
sudo apt install tree
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/
ls
ls -l /tmp/
mkdir -p /tmp/2do_parcial/{alumno,equipo}
tree /tmp/2do_parcial/
ls
cd inventory/
ls -l
cd ..
sudo apt update
sudo apt install ansible -y
ansible --version
sudo apt list --installed | grep ansible
sudo apt list --installed | grep git
ls -la /home/Mathias/
cd
cd /.ssh
cd .ssh
ls
cat id_rsa.pub 
ls -l
ssh-keygen -t ed25519 -C "gimenezmathias2021@gmail.com"
ls -l
ssh-keygen -t ed25519 
ls -l
rm id_ed25519
rm id_ed25519.pub 
ls -l
ssh-keygen -t ed25519 
ls -l
cat known_hosts
cat id_ed25519.pub 
cat known_hosts.old 
cat known_hosts
cat known_hosts.old 
ssh user@remote_server
ls -l
ls -l ~/.ssh/authorized_keys
id
cd .ssh
ls -l
cat id_ed25519.pub >> authorized_keys
ls -l
cat authorized_keys 
if config
ssh vagrant@192.168.56.2
ssh vagrant@192.168.56.3
ssh vagrant@192.168.56.2
pwd
ls
exit
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
cat inventory/
cd inventory/
ls
cat group_vars/
cd group_vars/
ls
cat testing.yml 
cd ..
ls
cat playbook.yml 
cd inventory/
ls
cd ..
cat playbook.yml 
ls
ansible-playbook -i inventory/ playbook.yml
cat /etc/group
ls
cd inventory/
ls
cd ..
ls
cd roles/
ls
cd 2do_parcial/
ls
cd tasks/
ls
cat main.yml 
ls -l /var/
ls -l /var
cd ..
ls
ansible-playbook -i inventory/ playbook.yml
ls -l /var/
ssh vagrant@192.168.56.2
ssh vagrant@192.168.56.3
ansible-playbook -i inventory/ playbook.yml
ls
car README.md 
cat README.md 
ansible-playbook -i inventory/hosts playbook.yml
ls -l /var/
ls -l
cd inventory/
ls
cat host
cd host_vars/
ls
cat 127.0.0.1.yml 
cat localhost.yml 
cd ..
ls
cd ..
ls
cd roles/
ls
cd 2do_parcial/
ls
car README.md 
caT README.md 
cat README.md 
ls
cd tasks/
ls
cat main.yml 
cd ..
ls
cd tests/
ls
cd ..
cd
cd /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial
ls
cd tasks/
ls
cat main.yml 
cd ..
ls
cd defaults/
ls
cd ..
ls
cd tasks/
ls
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml << EOF
# Creo el archivo datos_alumno.txt usando la plantilla
- name: Crear archivo datos_alumno.txt
  ansible.builtin.template:
    src: templates/datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

# Creo el archivo datos_equipo.txt usando la plantilla
- name: Crear archivo datos_equipo.txt
  ansible.builtin.template:
    src: templates/datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'
EOF

cat main.yml 
cd ..
ls
cd defaults/
ls
cat > home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/defaults/main.yml << EOF
alumno_nombre: Mathias
alumno_apellido: Gimenez
alumno_division: 311

equipo_ip: 192.168.56.3
equipo_distro: Vagrant
equipo_cores: 4
EOF

cat main.yml 
cd ..
ls
cd defaults/
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/defaults/main.yml << EOF
alumno_nombre: Mathias
alumno_apellido: Gimenez
alumno_division: 311

equipo_ip: 192.168.56.3
equipo_distro: Vagrant
equipo_cores: 4
EOF

cat main.yml 
cd ..
cd tasks/
cat main.yml 
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml << EOF
# Creo el archivo datos_alumno.txt usando la plantilla
- name: Crear archivo datos_alumno.txt
  ansible.builtin.template:
    src: templates/datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

# Creo el archivo datos_equipo.txt usando la plantilla
- name: Crear archivo datos_equipo.txt
  ansible.builtin.template:
    src: templates/datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'
# Configurar sudoers para el grupo 2PSupervisores
- name: Configurar sudoers para 2PSupervisores
  ansible.builtin.lineinfile:
    path: /etc/sudoers
    state: present
    line: "%2PSupervisores ALL=(ALL) NOPASSWD:ALL"
    validate: 'visudo -cf %s'
EOF

cat
cat main.yml 
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml << EOF
# Creo el archivo datos_alumno.txt usando la plantilla
- name: Crear archivo datos_alumno.txt
  ansible.builtin.template:
    src: templates/datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

# Creo el archivo datos_equipo.txt usando la plantilla
- name: Crear archivo datos_equipo.txt
  ansible.builtin.template:
    src: templates/datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

# Configurar sudoers para el grupo 2PSupervisores
- name: Configurar sudoers para 2PSupervisores
  ansible.builtin.lineinfile:
    path: /etc/sudoers
    state: present
    line: "%2PSupervisores ALL=(ALL) NOPASSWD:ALL"
    validate: 'visudo -cf %s'
EOF

cat main.yml 
cd ..
ls
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml << EOF
---
- name: Configurar entorno del 2do parcial
  hosts: all
  become: true
  roles:
    - crear_archivos
EOF

cat playbook.yml 
ansible-playbook -i inventory playbook.yml
cd ..
cd RTA_Examen_20241203/
ls
vim Punto_D.sh 
./Punto_D.sh
cd ..
ls
cp -r /home/Mathias/UTN-FRA_SO_Examenes/
ls /home/Mathias/UTN-FRA_SO_Examenes/
cp -r /home/Mathias/UTN-FRA_SO_Examenes/202406/ /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
cd /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
s
ls
cp -r /home/Mathias/RTA_Examen_20241203/ /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
ls
cd RTA_Examen_20241203/
ls
cd ..
history -a
ls
$HOME/.bash_history
sudo $HOME/.bash_history
ls
sudo home/.bash_history
sudo home/Mathias/.bash_history
ls /home/
ls /
cp $HOME/.bash_history .
ls
cp $HOME/.bash_history /home/Mathias/UTNFRA_SO_2do_Parcial_Gimenez/
ls
history -a
