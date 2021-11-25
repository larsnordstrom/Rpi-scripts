#!/bin/bash

DB_USER='root'
DB_PASSWORD=''
DB_NAME='wordpress'

# Detta gör databasen säkrare men i vårat syfte behövs det inte. 
# Ni kan ta bort # för att utföra detta om ni vill.
# sudo mysql_secure_installation

# Loggar in som root, skapar databas, användare, sätter rättigheter.
sudo mysql --user=$DB_USER --password=$DB_PASSWORD << EOF
CREATE DATABASE IF NOT EXISTS wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;
CREATE USER IF NOT EXISTS 'pi'@'localhost' IDENTIFIED BY 'raspberry';
GRANT ALL PRIVILEGES ON wordpress.* TO 'pi'@'localhost' IDENTIFIED BY 'raspberry';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'pi'@'localhost' IDENTIFIED BY 'raspberry' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
EOF