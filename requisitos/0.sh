#!bin/bash

#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
mon="mon"

function Title {
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
}

function logo1 {
    	echo -e "$green"
    echo "                     @@@@@@@@@@@                @@    " 
    echo "                     @    (@  @@                      "
    echo "                     @@@@@@@@@@@               .@@    "
    echo "                  %%%%%%%%%%%%%%%%*            %%%%   "
    echo "                  @@@&        ,@@@@                   "
    echo "                  @@@@@&    ,@@@@@/                   " 
    echo "                   (@@@@@@@@@@@@@              @@@@   "
    echo "                  % @@@@@@@@@@@@  @            @@@@   "
    echo "                  @ ,@@@@   @@@@ *@            ####   "
    echo "                  @  @@@@@@@@@@@ &@            @@@@   "
    echo "                  @  @  @@@@@ @@ @@            @@@@   "
    echo "                  @  @%       @@ #@            @@@@   "
    echo "                  @ %@@/     @@@ .@            @@@@   "
    echo "                  @  @@@@@@/ @# @ @@ %( %  @(@@@@@@   "
    echo "                  @@ @@@   @@  @. @@ @@  %%% @@@@@@   "
    echo "                  @@@# /@@@@@  @@@@                   "
    echo "                  @@@@@@#. *@@@@@@                    "
    sleep 0.10
    	echo -e "$red"
    echo "                      Wifi_Troll   "
    echo "                    -XDeadHackerX- "
        echo -e "$blue"
    echo "           ⟻---------------⤫--------------⟼		"
    echo "             Configuracion Tarjeta de Red 		    "
    echo "           ⟻---------------⤫--------------⟼		"
}

function logo2 {
    echo -e "$purple"
    echo "                                 ,*(#(*.			"                                    
    echo "                           .&%*           (%#                 "             
    echo "                         .#    /%%#((#%%%,   .#               "              
    echo "                   %(       (%      .     ,%        %/        "              
    echo "                   /%          #%.     /%,         /%         "              
    echo "                    %#             %%%             %#         "              
    echo "                    #%             %%#            (%,         "              
    echo "                    ,%#                           %%          "              
    echo "                     %%                          (%(          "              
    echo "                     (%%                         %%.          "              
    echo "                     .%%.                       (%%           "              
    echo "                      &%%                       %%,           "              
    echo "                /######(((##(##################(((######.     "              
    echo "                %%%*,(#%%(,*%%%%,,%%%%/,*%%%%,,#%%%*,/%%,     "              
    echo "                %%%,.(%%%(,,%%%%,,#%%%*.*%%%#,.%%%%*./%%,     "              
    echo "                (%%%&&%&&&&&&&&%&&&&&&&%%%&&&&&&&&%%%&&%.     "              
    echo "                 ......                          ......       "
    sleep 0.10
    	echo -e "$red"
    echo "                               Wifi_Troll   "
    echo "                             -XDeadHackerX- "
        echo -e "$blue"
    echo "                      ⟻-------------⤫-------------⟼		"
    echo "                       Clasificando la Informacion 		    "
    echo "                      ⟻-------------⤫-------------⟼		"           
}

check_wifi_mode() {
	#Gurdar en el contenedor $modo si la tarjeta esta en modo Monitor o Managed
  mode_check=$(sudo iwconfig $1 | grep Mode | awk '{print $1}')
  if [ "$mode_check" == "Mode:Monitor" ]; then
    mode=Monitor
  else
    mode=Managed
  fi
}

function card {
	#Aparezcan las interfaces de Red conectadas al equipo/maquina
	clear
	logo1
	ifconfig -a | sed 's/[ \t].*//;/^\(lo\|\)$/d; s/^\([^:]*\):/[*] \1/'

}


function ActMonitor {
####Activacion Modo Monitor y Modo Seguro####

	#Comprueba si se a introducido algo en el contenedor $interfaz#
	if [ -n "$interfaz" ]; then
		clear
		logo1
		echo
		read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " fails
		echo
		if [ $fails = y ]
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
		#Mostrar logo1 + interfaces#
		card 
		echo
		read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
		echo
		sudo ifconfig $interfaz2 promisc >/dev/null
		sudo ifconfig $interfaz2 down >/dev/null
		sleep 2.5
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
	else
		card
		echo
		read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
		read -p "[*] Cortar la salida a internet para evitar futuros errores? (y/n): " fails
		echo
		if [ $fails = y ]
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
		#Mostrar logo1 + interfaces#
		card
		echo
		read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
		echo
		sudo ifconfig $interfaz2 promisc >/dev/null
		sudo ifconfig $interfaz2 down >/dev/null
		sleep 2.5
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
	fi
}

function DesaMonitor {
	#Desactiva el modo monitor y lo restablece (Coge la interfaz de cuando se puso)
	echo
	echo "[#] Desactivando Ataque y Protocolos"
	echo
	sudo ifconfig $interfaz2 down >/dev/null
	sleep 2.5
	sudo ifconfig $interfaz2 promisc >/dev/null
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

function DesaMonitor2 {
	#Desactiva el modo monitor y lo fuerza a restablecerse (Pide las interfaces porque no se le a metido)
	card
	echo
	read -p "[*] Escribe la Interfaz de la Tarjeta de Red en modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
	echo
	echo "[#] Restableciendo Tarjeta de Red"
	echo
	sudo ifconfig $interfaz2 down >/dev/null
	sleep 2.5
	sudo ifconfig $interfaz2 promisc >/dev/null
	sudo macchanger -p $interfaz2 >/dev/null
	sudo ifconfig $interfaz2 up >/dev/null
	sudo ifconfig $interfaz2 -promisc >/dev/null
	sudo airmon-ng stop $interfaz2 >/dev/null
	echo "=============================="
	echo "  Desactivando Modo Monitor"
	echo "Restableciendo Tarjeta  de Red"
	echo "=============================="
	echo "-------->""                    |"
	sleep 0.30
	echo "--------------->""             |"
	sleep 0.30
	echo "---------------------->""      |"
	sleep 0.30
	echo "---------------------------->""|"
	echo "=============================="
	echo
	card
	echo
	read -p "[*] Escribe la Interfaz de la Tarjeta de Red (Ej: wlan0): " interfaz
	echo
	echo "[#] Restableciendo Tarjeta de Red"
	echo
	sudo ifconfig $interfaz -promisc >/dev/null
	sudo systemctl restart NetworkManager.service >/dev/null
	echo "=============================="
	echo "  Desactivando Modo Monitor"
	echo "Restableciendo Tarjeta  de Red"
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
	sudo /etc/init.d/networking restart
}

check_managed() {
	#Comprobacion de si la Tarjeta de Red esta en Modo Managed, en caso de no estar se pone solo
	if [ $mode = Managed ]; then
    sleep 0.25
	echo
    echo -e "$blue(Modo)$nc .......................................................... Managed [$green✓$nc]"
    sleep 2
else
    sleep 0.25
	echo
    echo -e "$red(Modo)$nc Monitor [$red✗$nc]"
	sleep 2
	clear
	DesaMonitor2
	echo
	echo "[#] Iniciando NetworkManager 45s"
	sleep 45
fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	Title
	echo "[0] Requisitos"
	echo
	sudo apt-get install xterm -y
	sudo apt-get install gnome-terminal -y
	sudo apt-get install wireless-tools aircrack-ng -y
	sudo apt install aircrack-ng -y
	sudo apt install airgraph-ng -y
	apt install nmap -y
	sudo apt-get install mdk4 -y
	sudo apt install hping3 -y
	sudo apt-get install bettercap -y
	sudo apt-get install -y netdiscover -y
	sudo apt install macchanger -y
	sudo apt-get install john -y
	sudo apt install iw -y
	sudo apt-get install network-manager -y

	if ! [ -d requisitos/resultados ]
		then
			mkdir requisitos/resultados
	fi

	cd requisitos

	sudo rm -r Inhibitor

	sudo git clone https://github.com/XDeadHackerX/Inhibitor.git && cd Inhibitor && chmod 777 installer.sh && cp requisitos/es/inhibitor.sh . && chmod 777 inhibitor.sh

	cd ..
	cd ..

	sudo chmod 777 wifi_troll.sh
	sudo bash wifi_troll.sh
fi