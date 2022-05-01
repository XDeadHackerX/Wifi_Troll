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
echo "[3] Geolocalizacion exacta de una Red Wifi"
echo 
sudo airmon-ng
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " opc2
echo
if [ $opc2 = y ]
	then
		sudo airmon-ng check kill >/dev/null
	else
echo "OK"
fi
sudo ifconfig $interfaz promisc >/dev/null
echo "======================="
echo "Activando Modo Monitor"
echo "======================="
echo "--->""                  |"
sleep 1
echo "-------->""             |"
sleep 1
echo "--------------->""      |"
sleep 1
echo "--------------------->""|"
echo "======================="
sudo airmon-ng start $interfaz
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
echo
sudo ifconfig $interfaz2 promisc >/dev/null
sudo ifconfig $interfaz2 down >/dev/null
sudo macchanger -a $interfaz2 >/dev/null
sudo ifconfig $interfaz2 up >/dev/null
echo "======================="
echo " Activando Modo Seguro"
echo "======================="
echo "--->""                  |"
sleep 1
echo "-------->""             |"
sleep 1
echo "--------------->""      |"
sleep 1
echo "--------------------->""|"
echo "======================="
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
echo "[#] Copia el BSSID del Wifi objetivo, puede tardar hasta 1 minuto (Despues Pulse Ctrl + c)"
echo
sudo gnome-terminal -- sudo sudo wash -2 -5 -a -i $interfaz2
read -p "Pega el BSSID de la Red Wifi que quiera Geolocalizar: " mac
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
echo "[#] Desactivando Modo Monitor"
echo
sudo ifconfig $interfaz2 down >/dev/null
sudo macchanger -p $interfaz2 >/dev/null
sudo ifconfig $interfaz2 up >/dev/null
sudo ifconfig $interfaz2 -promisc >/dev/null
sudo airmon-ng stop $interfaz2 >/dev/null
sudo ifconfig $interfaz -promisc >/dev/null
sudo systemctl restart NetworkManager.service >/dev/null
echo "=============================="
echo "        Desactivando"
echo "   Modo Monitor/Seguridad"
echo "=============================="
echo "-------->""                    |"
sleep 1
echo "--------------->""             |"
sleep 1
echo "---------------------->""      |"
sleep 1
echo "---------------------------->""|"
echo "=============================="
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
echo "[#] Cordenadas exactas de la Red Wifi ($mac)"
echo
cd requisitos/geowifi && sudo python3 geowifi.py -b $mac -m
cd ..
cd ..
echo "[El mapa se encuentra en la ruta requisitos/geowifi/results/(HTML Localizacion $mac)]"
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash wifi_troll.sh
				;;
			2 )	bash requisitos/3.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
