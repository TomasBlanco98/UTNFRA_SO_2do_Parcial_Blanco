vim index.html
mkdir web
mv index.html web/
vim Dockerfile
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd5
sudo vgextend vg_datos /dev/sdd5
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t web1-blanco:v1 .
docker run -d -p 80:80 web1-blanco:v1
docker build -t tomasblanco/web1-blanco:v1 .
docker push tomasblanco/web1-blanco:v1
