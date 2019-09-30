#!/bin/bash
#Instala repositorios
yum install epel-release
#Servidor httpd
yum install httpd -y
#iniciar servicio
systemctl start httpd
#Cada que reinicie el servidor
#inicia aut
#Hab puerto de entrada 80
firewall-cmd --zone=public --add-port=80/tcp
systemctl enable httpd
#mysql(maria db)
yum install mariadb-server -y
#iniciamos servicio
systemctl start mariadb
#Cada que reinicie el servidor
#inicia aut
systemctl enable mariadb
mysql_secure_installation
#instalar librerías de PHP
yum install php php-common php-mycrypt php-cli php-curl php-gd php-mysql php-openssl php-mbstring php-pdo php-bcmatch
#se reinicia el servidor httpd
systemctl restart httpd
