#!/bin/bash
apt install apache2 wget unzip -y
systemctl start apache2
systemctl enable apache2

cd /tmp/
wget https://www.tooplate.com/zip-templates/2156_graphite_creative.zip
unzip 2156_graphite_creative.zip
cp -r 2156_graphite_creative/* /var/www/html/

systemctl restart apache2
