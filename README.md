# Rpi-scripts - WARNING WORK IN PROGRESS!!
Detta är en blandning av bash scripts som ska kan användas för smidigare installationer.

Baserat på följande sidor:

https://behind-the-scenes.net/installing-wordpress-on-a-raspberry-pi-raspbian/ 

https://pimylifeup.com/raspberry-pi-phpmyadmin/


# OBS!!!
Vissa script innehåller variabler och måste köras som scripts!!

## Instruktioner

1. Logga in på Pi med Putty.
2. Navigera in i Documents mappen
    - cd Documents
3. Klona detta project till Rpi.
    - git clone https://github.com/larsnordstrom/Rpi-scripts.git
4. Navigera in i projektet
    - cd Rpi-scripts
5. Visa alla filer i mappen.
    - ls

Följande kommer visas:

* install.sh
* README.md
* scripts

Scriptet install.sh är ej färdigt, använd ej detta!

README.md är denna filen, modifiera den ej.

scripts är en mapp med olika bash scripts, följande fungerar och kan köras med nedanstående kommando:

### Uppdaterar systemet
    sudo sh scripts/system-update.sh
### Installerar apache
    sudo sh scripts/install-apache.sh
### Installerar MariaDB
    sudo sh scripts/install-mariadb.sh
### Installerar wordpress
    sudo sh scripts/install-wordpress.sh
### Installerar dialog som kommer användas senare för att bygga ett ui.
    sudo sh scripts/install-dialog.sh
### Laddar ner uppdateringar för alla dessa scripts från github.
    sudo sh scripts/update-script.sh

## Dessa script är ej färdiga:
    ui.sh
    install-phpmyadmin.sh
    setup-wp-db.sh
