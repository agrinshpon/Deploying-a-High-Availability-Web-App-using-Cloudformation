#!/bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2
rm ../../var/www/html/index.html
wget -P ../../var/www/html https://udacity-project-2.s3-us-west-2.amazonaws.com/index.html