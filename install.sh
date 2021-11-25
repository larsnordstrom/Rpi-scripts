#!/bin/bash
#########################################
#                                       #
# sudo chmod 755 install.sh             #
#                                       #
#                                       #
#                                       #
#########################################
source scripts/system-update.sh
source scripts/install-apache.sh
source scripts/install-mariadb.sh
source scripts/install-wordpress.sh
source scripts/setup-wp-db.sh
source scripts/install-phpmyadmin.sh





# Main menu



# Skriv ut IP
echo Kopiera IP-adressen och öppna den i webbläsaren på din dator.

hostname -I
