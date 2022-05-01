#!bin/bash

clear
echo
echo "                     __      __ .__   _____ .__        ___________                .__   .__   "
echo "                    /  \    /  \|__|_/ ____\|__|       \__    ___/_______   ____  |  |  |  |  "
echo "                    \   \/\/   /|  |\   __\ |  |         |    |   \_  __ \ /  _ \ |  |  |  |  " 
echo "                     \        / |  | |  |   |  |         |    |    |  | \/(  <_> )|  |__|  |__"
echo "                      \__/\  /  |__| |__|   |__| ______  |____|    |__|    \____/ |____/|____/"
echo "                           \/                   /_____/                                       "
echo "                                               ¯\_(ツ)_/¯"
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v1.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[1] Requisitos"
echo
sudo apt-get install xterm
sudo apt install aircrack-ng
sudo apt-get install mdk4
sudo apt install hping3
sudo apt-get install -y netdiscover

cd requisitos

sudo rm -r geowifi
sudo rm -r Inhibitor

sudo git clone https://github.com/GONZOsint/geowifi.git && cd geowifi && apt install virtualenv && python3 -m virtualenv venv && source venv/bin/activate && python3 -m pip install -r requirements.txt

cd ..

sudo git clone https://github.com/XDeadHackerX/Inhibitor.git && cd Inhibitor && chmod 777 installer.sh && cp requisitos/es/inhibitor.sh . && chmod 777 inhibitor.sh

cd ..
cd ..

sudo chmod 777 wifi_troll.sh
sudo bash wifi_troll.sh
