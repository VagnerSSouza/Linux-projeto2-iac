#!/bin/bash

echo "Arualizando o Servidor...."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install zip -y

echo "Baixando e copiando os arquivos da aplicação...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -o main.zip
cd linux-site-dio-main
cp -pRv * /var/www/html/

echo "FIM SCRIPT...."

