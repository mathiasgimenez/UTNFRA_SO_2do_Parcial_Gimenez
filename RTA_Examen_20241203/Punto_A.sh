#!/bin/bash

# Creación de la partición en el disco de 2GB (LVM)

echo "Creando partición LVM en /dev/sdd"

sudo fdisk /dev/sdd << EOF
n
p
1


t
8E
w
EOF

# Creación de particiones en el disco de 1GB (LVM)

echo "Creando particiones LVM en /dev/sde"

sudo fdisk /dev/sde << EOF
n
p
1

+512M
t
1
8E
n
p
2


t
2
8E
w
EOF

echo "Particiones creadas exitosamente."


# Limpiar las particiones
sudo wipefs -a /dev/sdd1 /dev/sde1 /dev/sde2
echo "Particiones limpiadas"


# Creamos volúmenes lógicos (pv) 
sudo pvcreate /dev/sdd1 /dev/sde1 /dev/sde2
echo "volúmenes lógicos creados"


# Creamos los vg (grupos de volúmenes) al disco de 2GB 
sudo vgcreate vg_datos /dev/sdd1
echo "grupo vg_datos creados"


# Creamos los vg (grupos de volúmenes) al disco de 1GB 
sudo vgcreate vg_temp /dev/sde1
echo "grupo vg_temp creado" 


# Creamos los LV (volúmenes logicos) en cada grupo
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 500M vg_temp -n lv_swap
echo "Volumenes lógicos creados"


# formateamos el lv para swap
sudo mkswap /dev/mapper/vg_temp-lv_swap

sudo swapon /dev/mapper/vg_temp-lv_swap


# formatear los LV para datos
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas


# montamos de forma persistente 
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
