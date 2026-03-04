#!/bin/bash
yum install httpd wget unzip -y
systemctl start httpd
systemctl enable httpd

cd /tmp/
wget https://www.tooplate.com/zip-templates/2156_graphite_creative.zip
unzip 2156_graphite_creative.zip
cp -r 2156_graphite_creative/* /var/www/html/

systemctl restart httpd
