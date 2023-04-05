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
echo "                                ︻デ═一  Created by: XDeadHackerX v2.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Wifi_Troll es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "                          ========================================================"
echo "                          [0]                    Requisitos"
echo "                          [1]                 Escaner Red/Wifi"
echo "                          [2]             Crear Redes Wifi masivas"
echo "                          [3]          Espiar el Trafico de nuestra Red"
echo "                          [4]       Extraer el  HandShake  de una Red Wifi"
echo "                          [5]  Inhibir cualquier Red Wifi o Dispositivo asociado"
echo "                                                 -----------"
echo "                          [99] ==================""|""☢ Salir ☢""|""======================"
echo "                                                 -----------"
echo
read -p " [*] Elige una opcion: " opc
	case $opc in
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
			99 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 3
				bash wifi_troll.sh
	esac
