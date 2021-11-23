#!/bin/bash
# sudo chmod 755 install-dialog.sh
sudo apt-get update && sudo apt-get upgrade -y

dpkg-query --status dialog

sudo apt-get install dialog -y
if dpkg-query -l "dialog" | grep -q ^.i ; then
    echo 'Installed'
else 
    echo 'Not installed'
fi