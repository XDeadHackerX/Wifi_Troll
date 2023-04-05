#!bin/bash

#Funciones:
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
echo "[1] Escaner Red/Wifi"
echo
echo "==============="
echo "[1] Red Local"" |"
echo "[2]   Wifi""    |"
echo "==============="
echo 
echo
read -p "[*] Elige una opcion: " opc4
	case $opc4 in
			1 )	echo
				echo "============================================="
				echo "[1] Escaneo de las IPs conectadas + puertos"" |"
				echo "[2] Escaneo continuo de las IPs conectadas""  |"
				echo "[3] Escaneo rapido de las IPs conectadas""    |"
				echo "[4] Salir""                                   |"
				echo "============================================="
				echo
				read -p "Elige una opcion: " opc5
					case $opc5 in
							1 )	echo
								read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo gnome-terminal --geometry 80x38+1300+20 -- sudo netdiscover -r $IpRed/24
								read -p "[*] Escribe la Ip que desea escanear (Ej: 192.168.1.43 o 192.168.1.0/24): " Ip
								sudo pkill gnome-terminal
								sudo gnome-terminal --geometry 80x24+1300+20 -- bash -c "sudo nmap -top-ports 1000 -Pn $Ip; sleep 999;"
								read -p "[*] Pulse Enter para cerrar el Scaneo de Puertos: " close
								sudo pkill gnome-terminal
								;;
							2 )	read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo netdiscover -r $IpRed/24
								;;
							3 )	read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo netdiscover -r $IpRed/24 -P
								;;
							4 )	exit && clear
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
			
				echo
				;;
			2 )	echo
				echo "================================================================"
				echo "[1] Escaneres avanzados Redes Wifi + [Grafico]"
				echo "[2] Escanear dispositivos conectados a un Wifi Ajeno + [Grafico]"
				echo "================================================================"
				echo
				read -p "Elige una opcion: " opc5
					##Se ejecuta la opcion escogida##
					case $opc5 in
							1 )	Title
								echo
								echo "========================================"
								echo "[1] Escaner con Aircrack-ng + [Grafico]"
								echo "[2] Escaner con Bettercap"
								echo "[3] Escaner con NmCli [Sin Modo Monitor]"
								echo "[4] Escaner con Wash"
								echo "========================================"
								read -p "Elige una opcion: " opc4
									case $opc4 in
											1 )	echo
												ActMonitor
												Title
												echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
												echo
												if ! [ -d requisitos/resultados ]
													then
														mkdir requisitos/resultados
												fi
												if ! [ -d requisitos/resultados/grafico_global ]
													then
														sudo rm -r requisitos/resultados/grafico_global
														sudo rm -r requisitos/resultados/captura_global-01.csv
												fi
												sudo airodump-ng $interfaz2 --band abg -w requisitos/resultados/captura_global
												echo
												sudo rm -r requisitos/resultados/captura_global-01.cap
												sudo rm -r requisitos/resultados/captura_global-01.kismet.csv
												sudo rm -r requisitos/resultados/captura_global-01.kismet.netxml
												sudo rm -r requisitos/resultados/captura_global-01.log.csv
												echo
												sudo airgraph-ng -i requisitos/resultados/captura_global-01.csv -o requisitos/resultados/grafico_global -g CAPR >/dev/null
												echo
												echo "=============================="
												echo "      Generando Grafico"
												echo " De las Redes Wifi Escaneadas"
												echo "=============================="
												echo "-------->""                    |"
												sleep 1
												echo "--------------->""             |"
												sleep 1
												echo "---------------------->""      |"
												sleep 1
												echo "---------------------------->""|"
												echo "=============================="
												echo
												echo
												echo "[*] Ruta del Grafico: [Wifi_Troll/requisitos/resultados/grafico_global]"
												echo "[*] Guarda la Imagen en otro directorio o con otro nombre para que no sea remplazada al volver a ejecutar esta opcion"
												echo
												read -p "[*] Quieres abrir el Grafico? (y/n): " open
												echo
												if [ $open = y ]
													then
														sudo open requisitos/resultados/grafico_global
												fi
												DesaMonitor
												;;
											2 )	echo
												ActMonitor
												Title
												echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
												echo
												sudo bettercap -iface $interfaz2 -eval 'set ticker.commands "clear; wifi.show"; wifi.recon on; ticker on'
												DesaMonitor
												;;
											3 )	echo
												Title
												echo "[#] Escaneo Realizado"
												echo
												sudo nmcli dev wifi list
												;;
											4 )	echo
												ActMonitor
												Title
												echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
												echo
												sudo wash -2 -5 -a -i $interfaz2
												DesaMonitor
												;;
											* )	echo
												echo "$RRPLY No es una opcion valida"
									esac
								;;
							2 )	Title
								nmcli dev wifi list
								echo
								read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
								read -p "[*] Copia el Canal (CHAN) del Wifi Objetivo y pegelo a continuacion: " ch
								Title
								ActMonitor
								Title
								echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
								sleep 3
								sleep 3
								if ! [ -d requisitos/resultados ]
									then
										mkdir requisitos/resultados
								fi
								if [ -d requisitos/resultados/$bssid ]
									then
										sudo rm -r requisitos/resultados/$bssid
								fi
								if [ -d requisitos/resultados/Hash* ]
									then
										sudo rm -r requisitos/resultados/Hash*
								fi
								if ! [ -d requisitos/resultados/$bssid ]
									then
										mkdir requisitos/resultados/$bssid
								fi
								sudo airodump-ng -c $ch --bssid $bssid $interfaz2 --band abg  -w requisitos/resultados/$bssid/captura_$bssid
								echo
								sudo rm -r requisitos/resultados/$bssid/captura_$bssid-01.kismet.csv
								sudo rm -r requisitos/resultados/$bssid/captura_$bssid-01.kismet.netxml
								sudo rm -r requisitos/resultados/$bssid/captura_$bssid-01.log.csv
								echo
								sudo airgraph-ng -i requisitos/resultados/$bssid/captura_$bssid-01.csv -o requisitos/resultados/$bssid/grafico_$bssid -g CAPR >/dev/null
								echo
								echo "=============================="
								echo "      Generando Grafico"
								echo " De las Redes Wifi Escaneadas"
								echo "=============================="
								echo "-------->""                    |"
								sleep 1
								echo "--------------->""             |"
								sleep 1
								echo "---------------------->""      |"
								sleep 1
								echo "---------------------------->""|"
								echo "=============================="
								Title
								echo "------------------------------------------------------------"
								echo "↓ Resultados--> $bssid | "`sudo aircrack-ng -J requisitos/resultados/$bssid/captura_$bssid-02 requisitos/resultados/$bssid/captura_$bssid-01.cap | awk 'NF==6{print $3}'`" ↓"
								echo "------------------------------------------------------------"
								echo
								sudo aircrack-ng -J requisitos/resultados/$bssid/captura_$bssid-02 requisitos/resultados/$bssid/captura_$bssid-01.cap | awk 'FNR>= 5{print}' | awk 'FNR<= 3{print}'
								sudo aircrack-ng -J requisitos/resultados/$bssid/captura_$bssid-02 requisitos/resultados/$bssid/captura_$bssid-01.cap | awk 'FNR>= 20{print}'
								sudo hccap2john requisitos/resultados/$bssid/captura_$bssid-02.hccap > requisitos/resultados/$bssid/Hash_$bssid-03
								echo
								echo "[*] Ruta del Grafico: [Wifi_Troll/requisitos/resultados/$bssid/grafico_$bssid]"
								echo "[*] Guarda la carpeta en otro directorio o con otro nombre para que no se remplace al volver a ejecutar esta opcion"
								echo
								read -p "[*] Quieres abrir el Grafico? (y/n): " open
								echo
								if [ $open = y ]
									then
										sudo open requisitos/resultados/$bssid/grafico_$bssid
								fi
								DesaMonitor
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
					esac
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