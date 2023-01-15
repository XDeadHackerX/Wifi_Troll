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
echo "                                ︻デ═一  Created by: XDeadHackerX v1.2  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[1] Escaner Red/Wifi"
echo
echo "=============="
echo "[1] Red Local""|"
echo "[2]   Wifi""   |"
echo "=============="
echo 
echo
read -p "[*] Elige una opcion: " opc4
	case $opc4 in
			1 )	echo
				read -p "[*] Escribe la Ip de Red (192.168.1.0 o 192.168.0.0): " opc2
				read -p "[*] Quieres ver el trafico de forma continua? (y/n): " opc3
				echo
					if [ $opc3 = y ]
						then
							netdiscover -r $opc2/24
						else
							netdiscover -r $opc2/24 -P
					fi
				echo
				;;
			2 )	echo
				echo "===================================================="
				echo "[1] Escaner avanzado Redes Wifi"
				echo "[2] Escanear dispositivos conectados a un Wifi Ajeno"
				echo "===================================================="
				echo
				read -p "Elige una opcion: " opc5
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
					##Se ejecuta la opcion escogida##
					case $opc5 in
							1 )	clear
								echo
								echo "                     __      __ .__   _____ .__        ___________                .__   .__   "
								echo "                    /  \    /  \|__|_/ ____\|__|       \__    ___/_______   ____  |  |  |  |  "
								echo "                    \   \/\/   /|  |\   __\ |  |         |    |   \_  __ \ /  _ \ |  |  |  |  " 
								echo "                     \        / |  | |  |   |  |         |    |    |  | \/(  <_> )|  |__|  |__"
								echo "                      \__/\  /  |__| |__|   |__| ______  |____|    |__|    \____/ |____/|____/"
								echo "                           \/                   /_____/                                       "
								echo "                                               ¯\_(ツ)_/¯"
								echo "                              __________________________________________________"					
								echo "                                ︻デ═一  Created by: XDeadHackerX v1.2  ︻デ═一 " 
								echo "          -------------------------------------------------------------------------------------------"
								echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
								echo "          -------------------------------------------------------------------------------------------"
								echo
								echo
								echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
								echo
								echo "==========================="
								echo "[1] Escaner con Aircrack-ng"
								echo "[2] Escaner con Bettercap"
								echo "[3] Escaner con Wash"
								echo "==========================="
								echo
								read -p "Elige una opcion: " opc4
									case $opc4 in
											1 )	echo
												sudo airodump-ng $interfaz2 --band abg
												;;
											2 )	echo
												sudo bettercap -iface $interfaz2 -eval 'set ticker.commands "clear; wifi.show"; wifi.recon on; ticker on'
												;;
											3 )	echo
												sudo wash -2 -5 -a -i $interfaz2
												;;
											* )	echo
												echo "$RRPLY No es una opcion valida"
									esac
								;;
							2 )	clear
								echo
								echo "                     __      __ .__   _____ .__        ___________                .__   .__   "
								echo "                    /  \    /  \|__|_/ ____\|__|       \__    ___/_______   ____  |  |  |  |  "
								echo "                    \   \/\/   /|  |\   __\ |  |         |    |   \_  __ \ /  _ \ |  |  |  |  " 
								echo "                     \        / |  | |  |   |  |         |    |    |  | \/(  <_> )|  |__|  |__"
								echo "                      \__/\  /  |__| |__|   |__| ______  |____|    |__|    \____/ |____/|____/"
								echo "                           \/                   /_____/                                       "
								echo "                                               ¯\_(ツ)_/¯"
								echo "                              __________________________________________________"					
								echo "                                ︻デ═一  Created by: XDeadHackerX v1.2  ︻デ═一 " 
								echo "          -------------------------------------------------------------------------------------------"
								echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
								echo "          -------------------------------------------------------------------------------------------"
								echo
								echo
								echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
								echo
								sudo wash -2 -5 -a -i $interfaz2
								read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
								read -p "[*] Copia el Canal (Ch) del Wifi Objetivo y pegelo a continuacion: " ch
								echo
								sleep 1
								echo "Listo"
								echo "Pulse Ctrl + c para finalizar el Scaneo"
								sleep 3
								sudo airodump-ng -c $ch --bssid $bssid $interfaz2 --band abg
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
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
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
