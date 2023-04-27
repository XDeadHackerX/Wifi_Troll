#!bin/bash

source requisitos/0.sh

Title
echo "[3] Crear Redes Wifi masivas"
echo
echo "=========================="
echo "[1] Nombres Random"
echo "[2] Nombres Personalizados"
echo "[3] Volver al Menu"
echo "=========================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
				card
				echo
				read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
				check_wifi_mode $interfaz
				check_managed $mode
				#Fin#
				#Activar Modo Monitor
				ActMonitor
				#Fin#
				Title
				echo "[#] Pulse Ctrl + c (Para detener las Redes Wifi creadas)"
				echo
				sudo mdk4 $interfaz2 b -s 1000
				;;
			2 ) echo
				#Comprobacion de que la Tarjeta de Red tenga puesto el Modo Managed y si no lo cambia + rellenar contendor $interfaz#
				card
				echo
				read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
				check_wifi_mode $interfaz
				check_managed $mode
				#Fin#
				#Activar Modo Monitor
				ActMonitor
				#Fin#
				Title
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
						Title
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
						Title
						echo "[#] Pulse Ctrl + c (Para detener las Redes Wifi creadas)"
						echo
						sudo mdk4 $interfaz2 b -s 1000 -f requisitos/lista2.lst
				fi
				;;
			3 ) bash wifi_troll.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 2
				bash requisitos/3.sh
	esac
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
read -p "Elige una opcion: " opc4
	case $opc4 in
			1 )	bash wifi_troll.sh
				;;
			2 )	bash requisitos/3.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
