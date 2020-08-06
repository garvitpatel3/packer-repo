#!/bin/bash
cd
sudo yum update -y
sudo yum install java-1.8.0-openjdk -y
sudo yum install tomcat -y
sudo chkconfig tomcat on
sudo service tomcat start
cd /usr/share/tomcat/webapps/
sudo wget https://app-ion-dev-bucket-us-east-2.s3.us-east-2.amazonaws.com/ion.war
sudo chkconfig tomcat on
cd
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
echo '<h1>Welcome to Packer</h1>' > /var/www/html/index.html

