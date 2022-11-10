#!/bin/bash
echo "Atualizando servidor e instalação dos pacotes"
app-get update
app-get upgrade -y
app-get install apache2 -y
app-get install unzip -y

echo "Instalando dados da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zipcd linux-site-dio
cp -R * /var/www/html/