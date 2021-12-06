#!/bin/bash
################################
# TODO:
# Fixa i2c
# Kontrollera om autostart filen finns
#
# Gör så autostart scriptet körs vid boot.
#
################################
sudo pip3 install adafruit-circuitpython-ssd1306


# Aktivera i2c


# Skapa ett autostart script i Documents som kör oled skärmens python script.
echo "#!/bin/bash\nsudo python /Rpi-scripts/scripts/oled/oled_stats.py" >> /Documents/my_autostart_script.sh

# Gör scriptet körbart
sudo chmod +x my_autostart_script.sh
