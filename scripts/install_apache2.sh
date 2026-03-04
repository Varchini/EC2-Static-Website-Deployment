#!/bin/bash
apt update
apt install wget unzip apache2 -y
systemctl start apache2
systemctl enable apache2
wget https://www.tooplate.com/zip-templates/2155_modern_musician.zip
unzip -o 2155_modern_musician.zip
cp -r 2155_modern_musician/* /var/www/html/
systemctl restart apache2
