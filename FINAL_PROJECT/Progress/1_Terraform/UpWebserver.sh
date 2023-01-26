#!/bin/bash

yum -y update
yum -y install httpd
myip=`curl http://169.254.69.254/latest/meta-data/local-ipv4`
echo "Web server with ip: $ip" > /var/www/html/index.html
sudo service https start
chkconfig httpd on
