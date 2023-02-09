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
echo "                                ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[1] Requisitos"
echo
sudo apt-get install xterm -y
sudo apt-get install gnome-terminal -y
sudo apt install aircrack-ng -y
sudo apt install airgraph-ng -y
sudo apt-get install mdk4 -y
sudo apt install hping3 -y
sudo apt-get install bettercap -y
sudo apt-get install -y netdiscover -y
sudo apt install macchanger -y
sudo apt-get install john -y

if ! [ -d requisitos/resultados ]
	then
		mkdir requisitos/resultados
fi

cd requisitos

sudo rm -r Inhibitor

sudo git clone https://github.com/XDeadHackerX/Inhibitor.git && cd Inhibitor && chmod 777 installer.sh && cp requisitos/es/inhibitor.sh . && chmod 777 inhibitor.sh

cd ..
cd ..

sudo chmod 777 wifi_troll.sh
sudo bash wifi_troll.sh
