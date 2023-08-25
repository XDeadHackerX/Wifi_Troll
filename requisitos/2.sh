#!bin/bash

source requisitos/0.sh

Title
echo "[2] Escaner Red/Wifi"
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
				echo "[4] Escaneo de puertos""                      |"
				echo "[5] Volver al Menu""                          |"
				echo "============================================="
				echo
				read -p "Elige una opcion: " opc5
					case $opc5 in
							1 )	echo
								read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo gnome-terminal --geometry 80x54+1300+20 -- bash -c "sudo netdiscover -r $IpRed/24; sleep 9999999999;" &
								read -p "[*] Escribe la Ip que desea escanear (Ej: 192.168.1.43 o 192.168.1.0/24): " Ip
								sudo pkill gnome-terminal
								sudo gnome-terminal --geometry 80x24+1300+20 -- bash -c "sudo nmap -top-ports 1000 -Pn $Ip; sleep 9999999999;" &
								read -p "[*] Pulse Enter para cerrar el Scaneo de Puertos: " close
								sudo pkill gnome-terminal
								;;
							2 )	read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo netdiscover -r $IpRed/24
								;;
							3 )	read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " IpRed
								sudo netdiscover -r $IpRed/24 -P
								;;
							4 )	echo
								read -p "Escribe la Ip que desea escanear (Ej: 192.168.1.43 o 192.168.1.0/24): " Ip
								read -p "Escanear los 1000 puertos mas usados (y) o los 65535 (n)? (y/n): " opc2
								echo
								if [ $opc2 = y ]
									then
										sudo gnome-terminal --geometry 80x24+1300+20 -- bash -c "sudo nmap -top-ports 1000 -Pn $Ip; sleep 9999999999;" &
										read -p "[*] Pulse Enter para cerrar el Scaneo de Puertos: " close
										sudo pkill gnome-terminal
									else
										sudo gnome-terminal --geometry 80x30+1300+20 -- bash -c "sudo nmap -sV -O -p '*' $Ip; sleep 99999999999" &
										read -p "[*] Pulse Enter para cerrar el Scaneo de Puertos: " close
										sudo pkill gnome-terminal
								fi
								;;
							5 )	bash wifi_troll.sh
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
								sleep 2
               					bash requisitos/2.sh
					esac
			
				echo
				;;
			2 )	echo
				echo "================================================================"
				echo "[1] Escaneres avanzados Redes Wifi + [Grafico]"
				echo "[2] Escanear dispositivos conectados a un Wifi Ajeno + [Grafico]"
				echo "[3] Volver al Menu"
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
												#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
												card
												echo
												read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
												check_wifi_mode $interfaz
												check_managed $mode
												#Activar Modo Monitor
												ActMonitor
												#Fin#
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
												#Desactivar Modo Monitor
												DesaMonitor
												#Fin#
												;;
											2 )	echo
												#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
												card
												echo
												read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
												check_wifi_mode $interfaz
												check_managed $mode
												#Activar Modo Monitor
												ActMonitor
												#Fin#
												Title
												echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
												echo
												sudo bettercap -iface $interfaz2 -eval 'set ticker.commands "clear; wifi.show"; wifi.recon on; ticker on'
												#Desactivar Modo Monitor
												DesaMonitor
												#Fin#
												;;
											3 )	echo
												Title
												echo "[#] Escaneo Realizado (Puede tardar hasta 1 minuto en aparecer la Red Objetivo"
												echo
												sudo nmcli dev wifi list
												;;
											4 )	echo
												#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
												card
												echo
												read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
												check_wifi_mode $interfaz
												check_managed $mode
												#Activar Modo Monitor
												ActMonitor
												#Fin#
												Title
												echo "[#] Pulse Ctrl + c (Para detener el Escaneo una vez haya comenzado)"
												echo
												sudo wash -2 -5 -a -i $interfaz2
												#Desactivar Modo Monitor
												DesaMonitor
												#Fin#
												;;
											* )	echo
												echo "$RRPLY No es una opcion valida"
												sleep 2
                								bash requisitos/2.sh
									esac
								;;
							2 )	#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
								card
								echo
								read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
								check_wifi_mode $interfaz
								check_managed $mode
								#Fin#
								Title
								echo "[#] Copia el BSSID y CHAN del Wifi objetivo, puede tardar hasta 1 minuto en aparecer la Red Objetivo"
								echo
								nmcli dev wifi list
								echo
								read -p "[*] Copia el BSSID del Wifi Objetivo y pegelo a continuacion: " bssid
								read -p "[*] Copia el Canal (CHAN) del Wifi Objetivo y pegelo a continuacion: " ch
								#Activar Modo Monitor
								ActMonitor
								#Fin#
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
								#Desactivar Modo Monitor
								DesaMonitor
								#Fin#
								;;
							3 ) bash wifi_troll.sh
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
								sleep 2
                				bash requisitos/2.sh
					esac
				;;
				* )	echo
					echo "$RRPLY No es una opcion valida"
					sleep 2
                	bash requisitos/2.sh
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
			2 )	bash requisitos/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac