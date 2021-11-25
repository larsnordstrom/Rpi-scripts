#!/bin/bash

DB_USER='root'
DB_PASSWORD=''
DB_NAME='wordpress'

sudo mysql_secure_installation

# Loggar in som root, skapar databas, användare, sätter rättigheter.
sudo mysql --user=$DB_USER --password=$DB_PASSWORD << EOF
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;
CREATE USER 'pi'@'localhost' IDENTIFIED BY 'raspberry';
GRANT ALL PRIVILEGES ON wordpress.* TO 'pi'@'localhost' IDENTIFIED BY 'raspberry';
FLUSH PRIVILEGES;
exit
EOF