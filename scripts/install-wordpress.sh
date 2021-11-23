#!/bin/bash
# sudo chmod 755 install-wordpress.sh

sudo rm /var/www/html/*

cd /var/www/html

sudo wget http://wordpress.org/latest.tar.gz

sudo tar xzf latest.tar.gz

sudo mv wordpress/* . 

sudo rm -rf wordpress latest.tar.gz

sudo chown -R $USER:www-data /var/www/html

sudo chmod -R 775 /var/www/html