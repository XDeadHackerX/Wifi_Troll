#!bin/bash

#Colors
nc="\e[0m"

clear
echo -e "$nc"
echo "                     __      __ .__   _____ .__        ___________                .__   .__   "
echo "                    /  \    /  \|__|_/ ____\|__|       \__    ___/_______   ____  |  |  |  |  "
echo "                    \   \/\/   /|  |\   __\ |  |         |    |   \_  __ \ /  _ \ |  |  |  |  " 
echo "                     \        / |  | |  |   |  |         |    |    |  | \/(  <_> )|  |__|  |__"
echo "                      \__/\  /  |__| |__|   |__| ______  |____|    |__|    \____/ |____/|____/"
echo "                           \/                   /_____/                                       "
echo "                                               ¯\_(ツ)_/¯"
echo "                              __________________________________________________"					
echo "                                ︻デ═一  Created by: XDeadHackerX v2.1  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "                          ========================================================"
echo "                          [0]                    Requisitos"
echo "                          [1]                  Tarjeta de Red"
echo "                          [2]                Escaner  Red / Wifi"
echo "                          [3]             Crear Redes Wifi  masivas"
echo "                          [4]          Espiar el Trafico de nuestra Red"
echo "                          [5]       Extraer el  HandShake  de una Red Wifi"
echo "                          [6]  Inhibir cualquier Red Wifi o Dispositivo asociado"
echo "                                                 -----------"
echo "                          [99] ==================""|""☢ Salir ☢""|""======================"
echo "                                                 -----------"
echo
read -p " [*] Elige una opcion: " opc1
	case $opc1 in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;
			6 )	bash requisitos/6.sh
				;;
			99 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 3
				bash wifi_troll.sh
	esac
