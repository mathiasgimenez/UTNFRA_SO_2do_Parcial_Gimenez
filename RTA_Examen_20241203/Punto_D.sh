#!/bin/bash

# Crear una clave SSH
ssh-keygen -t ed25519

# Agregar la clave pública al archivo authorized_keys
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

# Crear la estructura de directorios
mkdir -p /tmp/2do_parcial/{alumno,equipo}

# Crear el archivo de tareas en Ansible
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

# Crear los valores por defecto para el rol
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/defaults/main.yml << EOF
alumno_nombre: Mathias
alumno_apellido: Gimenez
alumno_division: 311

equipo_ip: 192.168.56.3
equipo_distro: Vagrant
equipo_cores: 4
EOF

# Crear el archivo de playbook principal
cat > /home/Mathias/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml << EOF
---
- name: Configurar entorno del 2do parcial
  hosts: all
  become: true
  roles:
    - 2do_parcial
EOF

# Ejecutar el playbook de Ansible
ansible-playbook -i inventory playbook.yml

