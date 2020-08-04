#!/bin/bash
cd
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
echo '<h1>Welcome to Packer</h1>' > /var/www/html/index.html
