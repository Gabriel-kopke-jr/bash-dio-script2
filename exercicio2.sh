#!/bin/bash

echo "Atualizando o servidor"

sudo apt-get update
sudo apt-get upgrade -y

echo "Baixando o apache2"

sudo apt-get apache2 -y


echo "Baixando o unzip"

sudo apt-get unzip -y

echo  "Baixando a aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * var/www/html/


