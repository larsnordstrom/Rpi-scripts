#!/bin/bash
# sudo chmod 755 ui.sh
TITLE='Meny'
MENU_DESC='Välj ett alternativ, använd piltangenterna för att navigera'
BACKTITLE=''
WINDOW_HEIGHT=100
WINDOW_WIDTH=100
CHOICES_HEIGHT=4

options=(1 "Update/Upgrade"
         2 "Git pull"
         3 "Apache"
         4 "MariaDB"
         5 "PhpMyAdmin"
         6 "Wordpress") 

choices=(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU_DESC" \
                $WINDOW_HEIGHT $WINDOW_WIDTH \
                "${options[@]}" \
                2>&1 >/dev/tty)

clear
case $choices in
    1)
        echo "Pressed 1"
        ;;
    2) 
        echo "Pressed 2"
        ;;
    3)
        echo "Pressed 3"
        ;;
    4)
        echo "Pressed 4"
        ;;
    5)
        echo "Pressed 5"
        ;;
    6)
        echo "Pressed 6"
        ;;

easc

