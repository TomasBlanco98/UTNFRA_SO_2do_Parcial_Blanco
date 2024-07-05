docker login -u tomasblanco
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
history -a
pwd
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd1
sudo pvcreate /dev/sdd2 /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgs
sudo vgcreate vg_temp /dev/sdd2
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/vg_temp/lv_swap
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
ls /
sudo mkdir /work
ls /
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo systemctl restar docker
sudo systemctl restart docker
sudo systemctl status docker
ll
cd RTA_Examen_20240705/
LL
ll
cd ..
echo "sudo fdisk /dev/sdd" >> RTA_Examen_20240705/Punto_A.sh
echo "sudo fdisk /dev/sdc" >> RTA_Examen_20240705/Punto_A.sh
cat RTA_Examen_20240705/Punto_A.sh
echo "sudo pvcreate /dev/sdd1" >> RTA_Examen_20240705/Punto_A.sh
echo "sudo pvcreate /dev/sdd2 /dev/sdc1" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo vgcreate vg_temp /dev/sdd2" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo lvcreate -L +5M vg_datos -n lv_docker" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo lvcreate -l +100%FREE vg_datos -n lv_workareas" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo lvcreate -l +100%FREE vg_temp -n lv_swap" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mkswap /dev/mapper/vg_temp-lv_swap" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo swapon /dev/vg_temp/lv_swap" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mkdir /work" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo mount /dev/mapper/vg_datos-lv_workareas /work" >> RTA_Examen_20240705/Punto_A.sh 
echo "sudo systemctl restart docker" >> RTA_Examen_20240705/Punto_A.sh 
pwd
cd /usr/local/bin/
sudo vim blanco_AltaUser-Groups.sh
echo "sudo vim blanco_AltaUser-Groups.sh" >> RTA_Examen_20240705/Punto_B.sh 
cd 
pwd
echo "sudo vim blanco_AltaUser-Groups.sh" >> RTA_Examen_20240705/Punto_B.sh 
ll
cd UTN-FRA_SO_Examenes/202406/docker/
ll
vim index.html 
mkdir web
mv index.html web/
vim Dockerfile
docker build -t web1-blanco:v1 .
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd5
sudo vgextend vg_datos /dev/sdd5
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t web1-blanco:v1 .
docker run -d -p 80:80 web1-blanco:v1
docker ps
docker image list
curl localhost_80
curl localhost:80
docker push tomasblanco/web1-blanco:v1
docker build -t tomasblanco/web1-blanco:v1 .
docker push tomasblanco/web1-blanco:v1
cd
ll
echo "vim index.html" >> RTA_Examen_20240705/Punto_C.sh 
echo "mkdir web" >> RTA_Examen_20240705/Punto_C.sh 
echo "mv index.html web/" >> RTA_Examen_20240705/Punto_C.sh 
echo "vim Dockerfile" >> RTA_Examen_20240705/Punto_C.sh 
echo "sudo fdisk /dev/sdd" >> RTA_Examen_20240705/Punto_C.sh 
echo "sudo pvcreate /dev/sdd5" >> RTA_Examen_20240705/Punto_C.sh 
echo "sudo vgextend vg_datos /dev/sdd5" >> RTA_Examen_20240705/Punto_C.sh 
echo "sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker" >> RTA_Examen_20240705/Punto_C.sh 
echo "sudo resize2fs /dev/mapper/vg_datos-lv_docker" >> RTA_Examen_20240705/Punto_C.sh 
echo "docker build -t web1-blanco:v1 ." >> RTA_Examen_20240705/Punto_C.sh 
echo "docker run -d -p 80:80 web1-blanco:v1" >> RTA_Examen_20240705/Punto_C.sh 
echo "docker build -t tomasblanco/web1-blanco:v1 ."
echo "docker build -t tomasblanco/web1-blanco:v1 ." >> RTA_Examen_20240705/Punto_C.sh 
echo "docker push tomasblanco/web1-blanco:v1" >> RTA_Examen_20240705/Punto_C.sh 
cd UTN-FRA_SO_Examenes/202406/docker/
vim run.sh
cd ..
cd ansible/
ll
cd roles/
ansible-galaxy role init estructura
cd estructura/
cd cd tasks/
cd tasks/
ll
vim main.yml 
cd ..
cd templates/
cd ..
cd vars/
vim main.yml 
cd ..
cd templates/
vim template_01.js
vim template_02.js
cd ..
vim tests/test.yml 
ll
vim ansible.cfg
cd /tmp
ll
cd
cd UTN-FRA_SO_Examenes/202406/ansible/roles/estructura/
ansible-playbook -i /tests/inventory tests/test.yml 
ll
sudo mkdir -p /tmp/2do_parcial/config
sudo chmod 777 -R /tmp/2do_parcial/
ansible-playbook -i /tests/inventory tests/test.yml 
ll
cd
echo "ansible-galaxy role init estructura" >> RTA_Examen_20240705/Punto_D.sh 
echo "vim main.yml" >> RTA_Examen_20240705/Punto_D.sh 
echo "vim template_01.js" >> RTA_Examen_20240705/Punto_D.sh 
echo "vim template_02.js" >> RTA_Examen_20240705/Punto_D.sh 
echo "vim tests/test.yml" >> RTA_Examen_20240705/Punto_D.sh 
echo "vim ansible.cfg" >> RTA_Examen_20240705/Punto_D.sh 
ll
cd /tmp/
ll
cd 2do_parcial/
ll
cd config/
ll
cd ..
ansible-playbook -i /tests/inventory tests/test.yml 
cd
cd UTN-FRA_SO_Examenes/
LL
ll
cd 202406/ansible/
ansible-playbook -i /tests/inventory tests/test.yml 
ll
cd roles/
ll
cd estructura/
ll
ansible-playbook -i /tests/inventory tests/test.yml 
ll
cd templates/
ll
vim template_01.js 
cd ..
ll
cd tests/
ll
vim test.yml 
cd ..
ll
cd tasks/
ll
vim main.yml 
cd ..
ansible-playbook -i /tests/inventory tests/test.yml 
ll
cd tasks/
ll
vim main.yml 
cd ..
cd templates/
ll
mv template_01.js template_01.j2
ll
mv template_02.js template_02.j2
cd ..
ansible-playbook -i /tests/inventory tests/test.yml 
ll
cd /tmp/2do_parcial/config/
ll
cd ..
ll
cd alumno/
ll
cat datos_alumno.txt 
cd ..
cd equipo/
cat datos_equipo.txt 
cd
ll
echo "mv template_01.js template_01.j2" >> RTA_Examen_20240705/Punto_D.sh 
echo "mv template_02.js template_02.j2" >> RTA_Examen_20240705/Punto_D.sh 
echo "ansible-playbook -i /tests/inventory tests/test.yml" >> RTA_Examen_20240705/Punto_D.sh 
ll
cd UTN-FRA_SO_Examenes/
ll
cd 202406/
ll
cd docker/
ll
cd ..
cd bash_script/
ll
cd ..
cd /usr/local/bin/
ll
vim blanco_AltaUser-Groups.sh 
sudo vim blanco_AltaUser-Groups.sh 
ll
cat blanco_AltaUser-Groups.sh 
blanco_AltaUser-Groups.sh tomas UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo chmod 777 blanco_AltaUser-Groups.sh 
blanco_AltaUser-Groups.sh tomas UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
ll
git init
git add UTN-FRA_SO_Examenes/202406/
git status
git commit -m "Agregando carpeta UTN-FRA_SO_Examenes/202406"
git remote add origin https://github.com/TomasBlanco98/UTNFRA_SO_2do_Parcial_Blanco
git push --set-upstream origin master
git config --global user.name "tomas blanco"
git config --global user.email tomiblanco98@gmail.com
git remote add origin https://github.com/TomasBlanco98/UTNFRA_SO_2do_Parcial_Blanco
git push --set-upstream origin master
git add UTN-FRA_SO_Examenes/202406/
ssh-keygen 
cat /home/tomas/.ssh/id_rsa.pub
git clone git@github.com:TomasBlanco98/UTNFRA_SO_2do_Parcial_Blanco.git
ll
cp -R UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_Blanco/
CD UTNFRA_SO_2do_Parcial_Blanco/
cd UTNFRA_SO_2do_Parcial_Blanco/
git status
git add .
git commit -m "Primer commit"
git push origin master
cd
cp -R RTA_Examen_20240705/ UTNFRA_SO_2do_Parcial_Blanco/
cd UTNFRA_SO_2do_Parcial_Blanco/
ll
git status
git add .
git commit -m "Subiendo carpeta RTA_Examen"
git push origin master
cat $HOME/.bash_history
cd
