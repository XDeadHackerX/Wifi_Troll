# 🧨 Wifi_Troll 🧨

> Herramienta creada por XDeadHackerX

<p align="center"><img width="120px" alt="Version" src="https://img.shields.io/badge/version-2.0-red.svg?style=for-the-badge"/></p>

[![Wifi-Troll-2-0.png](https://i.postimg.cc/9FdJh54H/Wifi-Troll-2-0.png)](https://postimg.cc/D8zqrNdx)

## 💡 Funciones 💡

:ballot_box_with_check: **Escaner de Red Local** --> [*Escaneo constante o sacar un listado, Ip, MAC, Cantidad de Tráfico, Vendedor MAC. Ahora también te da la opción de hacer un escaneo de los puertos abiertos de una ip o de toda la Red.*]

:ballot_box_with_check: **Escaner de Redes Wifi** --> [*Opción de hacer el escaneo con Aircrack-ng, Bettercap, NmCli y Wash. En el caso de usar Aircrack-ng cuando finaliza el escaneo te crea un Gráfico en el que te muestra un esquema de las redes Wifi detectadas y los dispositivos conectados, mostrándote (Mac, Fabricante de la Mac, Tipo de dispositivo y tiempo conectados a la Red). En todas las opciones automatiza los escaneos y obtiene la MAC, la distancia desde nuestra Tarjeta de Red, los Beacons, el Canal, la velocidad del Router, la Encriptación, el AUTH y el nombre de la Red Wifi.*]

:ballot_box_with_check: **Escaner de Dispositivos conectados a una Wifi** --> [*Muestra los dispositivos Wifi conectados a una Red Wifi, cuando finaliza el escaneo te crea un Gráfico en el que te muestra un esquema de los dispositivos conectados mostrando la MAC de los dispositivos, la cantidad de Tráfico, la distancia entre cada dispositivo y nuestra Tarjeta de Red, los paquetes de perdida, Notas y Probes.*]

:ballot_box_with_check: **Crear Redes Wifi de forma Masiva** --> [*La posibilidad de crear +100 Redes Wifi con nombres Random y nombres Personalizados.*]

:ballot_box_with_check: **Espiar el Tráfico de una Red Local** --> [*Nos hace un escaneo de la Red Local y nos da a escoger entre una de las Ips conectadas a la Red y a partir de ahí nos mostrará todo el tráfico que genere, Páginas Web, protocolos de Seguridad, Usuario y Contraseña (Webs HTTP), etc.*]

:ballot_box_with_check: **Extraer el HandShake de una Red Wifi** --> [*Esta Opción nos facilita la tarea a la hora de recolectar el Handshake de una Red Wifi, ya que a veces puede llegar a ser una tarea tediosa. Este apartado está pensado para ser lo más sencillo posible para el Usuario, nos va abriendo consolas interactivas donde nos muestra información que necesitamos y tras finalizar se van cerrando de forma automática. El Ataque consiste en enviar paquetes de* **Disassociation** *a todos los usuarios de la Red durante 10 segundos para obligarles a conectarse de nuevo y obtener el Handshake de uno de los dispositivos.*]

:ballot_box_with_check: **Inhibir Redes Wifis y Dispositivos locales** --> [*Esta Opción ejecuta mi herramienta [Inhibitor](https://github.com/XDeadHackerX/Inhibitor) la cual es capaz de Inhibir cualquier (Red Wifi/Dispositivo Conectado) sin tener acceso a la Red Wifi víctima, para los que no disponen con una tarjeta de red compatible con el Modo Monitor, te da la opción de hacerle un DOS al router que estés conectado o a los dispositivos conectados a la Red.*]


## 🛠 Instalar Herramienta 🛠

1) sudo apt update && apt -y full-upgrade

2) sudo apt-get install git

3) git clone https://github.com/XDeadHackerX/Wifi_Troll.git

4) cd Wifi_Troll

5) chmod 777 wifi_troll.sh

6) bash wifi_troll.sh

7) Marcamos la opcion 0 para instalar las dependencias (Solo marcar la primera vez)

8) Ya podemos disfrutar de la herramienta

## 🎲 Tener en Cuenta 🎲

[1] No hace falta poner la Tarjeta en Modo Monitor, las opciones que requieren de este Modo se activan y se desactivan de forma automática.

[2] Las opciones 1, 2, 4 y 5 cuentan con Modo Seguro, haciendo que cambie la MAC de la Tarjeta por una random cada vez que se ejecute una de estas opciones.

[3] La herramienta soporta escaneos y ataques a las bandas Wifi 5GHz.

[4] La opción 4 instala y ejecuta una herramienta desarrollada por [mi](https://github.com/XDeadHackerX) llamada [Inhibitor](https://github.com/XDeadHackerX/Inhibitor), está disponible en mis repositorios.

[5] En la opción 4 una vez capturado el Handshake se almacena en la ruta requisitos/resultados/BSSID del Wifi/handshake-01.cap.

[6] En la Carpeta donde se encuentra el Handshake podremos encontrar 2 archivos más terminados en (-02.hccap) y (Hash.XXX-03), estos solo se generan por si el usuario también los requiere.

## 🔎 Versiones 🔎

(v1.0) --->   Versión Original.

(v1.1) --->   Nuevo Apartado [3] Espiar el Tráfico de nuestra red, podremos ver que servicios Webs está usando un dispositivo de nuestra red o de todos los dispositivos de nuestra red (HTTP y HTTPS). Grandes cambios en el Apartado [1] Escáner Red/Wifi, podremos analizar los dispositivos conectados a nuestra red o ver las redes Wifi de alrededor (Dándote a escoger entre 3 herramientas para hacerlo) y los dispositivos Wifi conectados a los Wifis. Optimización del código, corrección de errores, mejoras visuales.

(v1.2) --->   La opción 4 quedo obsoleta y se ha remplazado por ([4] Extraer el HandShake de una Red Wifi), esta opción consigue de forma súper automática expulsar a todos los usuarios de la red wifi seleccionada durante 10 segundos para que cuando se vuelvan reconectar obtenga el Handshake y lo almacene en carpetas individuales.

(v1.3) --->   Nueva función dentro del Apartado ([1] Escáner Red/Wifi) Dentro de Wifi, en el caso de escoger la Opción de Aircrack-ng cuando finaliza el escaneo te crea un Gráfico en el que te muestra un resumen de los dispositivos conectados, mostrándote (Mac, Fabricante de la Mac, Tipo de dispositivo y tiempo conectados a la Red)

(v2.0) --->   Nueva función dentro del Apartado ([1] Escáner Red/Wifi) Dentro de Red Local, sé a añadido la posibilidad de hacer un escaneo de los puertos abiertos de una IP o de toda la Red. Nueva función dentro del Apartado ([1] Escáner Red/Wifi) Dentro de Wifi, se ha agregado "NmCli" a las opciones de escaneo Wifi para poder tener una opción que no requiera de Tarjeta de Red compatible con el Modo Monitor. Solucionado error que sucedía al generar el Gráfico de las redes Wifi y sus usuarios. Cambios al escanear los dispositivos de una Red Wifi Ajena, primero se hacía un escaneo con Wash para enumerar las redes Wifi, al ver que es un escáner irregular, que a veces deja de funcionar durante días se ha sustituido por "NmCli", el cual es mucho más rápido, no necesita activar el Modo Monitor y da toda la información requerida para hacer el segundo escaneo = Scanear Red Wifi Individual. La herramienta ha sido optimizada, eliminando 200 líneas de código gracias a la programación modular.

## ⭐☕ Creado por XDeadHackerX ☕⭐

**Si consideras que este proyecto ha sido útil, te agradecería que me apoyaras dándole una estrella a este repositorio o invitándome a un café.**

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XDeadHackerX)

Copyright © 2023, XDeadHackerX
