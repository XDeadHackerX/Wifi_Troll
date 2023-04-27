#!bin/bash

source requisitos/0.sh

Title
echo "[1] Tarjeta de Red"
echo
echo "==============================="
echo "[1] Info de la Tarjeta de Red"" |"
echo "[2] Info Frecuencias""          |"
echo "[3] Activar modo Monitor""      |"
echo "[4] Restablecer Tarjeta de Red""|"
echo "[5] Volver al Menu""            |"
echo "==============================="
echo 
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
			1 )	clear
                logo1
                sleep 1
                    echo -e "$white"
                echo "##############################################"
                echo "[##] Datos técnicos: "
                echo "##############################################"
                echo
                sudo iwconfig 
                echo
                echo "##############################################"
                echo "[##] Interfaz, Drivers, Chipset: "
                echo "##############################################"
                sudo airmon-ng
                echo "##############################################"
                echo "[##] Interzaces + MAC: "
                echo "##############################################"
                echo
                sudo ifconfig -a | awk '/^[a-z]/ { iface=$1; } /inet addr:/ { next; } /^[[:space:]]*ether/ { print iface,$2; }'
                echo
                echo "##############################################"
                echo "[##] Modos compatibles con la Tarjeta de Red: "
                echo "##############################################"
                echo
                sudo iw list | awk '/Supported interface modes/,/Band/{if(NR>1)print}' | head -n -1
                echo
                echo "##############################################"
                echo "[##] Modo Tajeta de Red (Monitor/Manager): "
                echo "##############################################"
                echo
                sudo iwconfig | grep -oP '^\S+' | xargs -n1 sh -c 'echo -n $0" Mode:"; iwconfig $0 | awk -F "\"" "/Mode/ {print $2}"'
                echo
                echo "##############################################"
                echo "[##] Tasa de Transferencia de Datos: "
                echo "##############################################"
                echo
                sudo iw list | grep -oP "VHT TX highest supported:\s*\K\d+" | awk '{print "Tasa de transferencia: " $1 " Mbps"}'
                echo
				;;
            2 )	clear
                logo2
                    echo -e "$white"
                sudo iw list > requisitos/resultados/frecuencias.txt
                sleep 2
                grep -E 'Band 1|Band 2|\*[[:space:]][[:digit:]]{4} MHz' requisitos/resultados/frecuencias.txt
				;;
            3 )	echo
                read -p "Para usar esta herramienta no es necesario pulsar esta opcion, ya que cada apartadoa activa el Modo monitor cuando lo necesita (ENTER = OK): " exit
                clear
                ActMonitor
				;;
            4 )	echo
                clear
                DesaMonitor2
				;;
			5 )	echo
				sleep 1
				bash wifi_troll.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
                sleep 2
                bash requisitos/1.sh
	esac
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc5
	case $opc5 in
			1 )	bash wifi_troll.sh
				;;
			2 )	bash requisitos/1.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac