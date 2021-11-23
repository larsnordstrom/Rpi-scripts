#!/bin/bash
# sudo chmod 755 install.sh



source scripts/system-update.sh
source scripts/install-apache.sh
source scripts/install-mariadb.sh
source scripts/install-wordpress.sh

# Skriv ut IP

# Main menu




echo Kopiera IP-adressen och öppna den i webbläsaren på din dator.

hostname -I
