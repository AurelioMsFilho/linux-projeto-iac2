#!/bin/bash

echo "Atualizando o servidor"

sudo apt-get update
sudo apt-get upgrade -y

echo "Baixando e copiando os arquivos da aplicação...."
sudo apt-get install apache2 -y
sudo apt install samba -y
sudo apt install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
