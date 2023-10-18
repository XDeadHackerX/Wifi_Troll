# 🧨 Wifi_Troll 🧨

> Herramienta creada por XDeadHackerX

<p align="center"><img width="120px" alt="Version" src="https://img.shields.io/badge/version-2.2-red.svg?style=for-the-badge"/></p>

[![Wifi-Troll-2-2.png](https://i.postimg.cc/4xhYCyVm/Wifi-Troll-2-2.png)](https://postimg.cc/87NpM1yS)

<p>Vídeo Demo: <a href="#punto1">Pulse aquí</a> o <a href="https://vimeo.com/815234454">aquí</a></p>

---

*Buenas, soy* **XDeadHackerX** *y quiero presentaros la última versión de mi herramienta llamada* **Wifi_Troll**. *Esta Tool está enfocada al*  **Networking,** *Capaz de automatizar una amplia variedad de funciones.* **Opciones:** *Escaneo de Redes Wifi/Red Local, Creación Masiva de Redes Wifi, Extraer el HandShake de una Red Wifi, Inhibir todo tipo de Red Wifi o equipos de nuestra Red, Espiar el tráfico de una red local.* **Modo Monitor:** *La herramienta se ha desarrollado con el fin de poder disfrutar de su variedad de opciones sin tener que disponer de una tarjeta de red que permita el modo monitor para usar cada una de sus opciones.* **[NO ME HAGO RESPONSABLE DEL MAL USO DE ESTA HERRAMIENTA]**

<p align="center"> <img width="250px" src="https://s2.gifyu.com/images/Radar2.gif"></p>

---

## 💡 Funciones 💡


:ballot_box_with_check: **Escaner de Red Local** --> [*Escaneo constante o sacar un listado, Ip, MAC, Cantidad de Tráfico, Vendedor MAC. Ahora también te da la opción de hacer un escaneo de los puertos abiertos de una ip o de toda la Red.*]

:ballot_box_with_check: **Escaner de Redes Wifi** --> [*Opción de hacer el escaneo con Aircrack-ng, Bettercap, NmCli y Wash. En el caso de usar Aircrack-ng cuando finaliza el escaneo te crea un Gráfico en el que te muestra un esquema de las redes Wifi detectadas y los dispositivos conectados, mostrándote (Mac, Fabricante de la Mac, Tipo de dispositivo y tiempo conectados a la Red). En todas las opciones automatiza los escaneos y obtiene la MAC, la distancia desde nuestra Tarjeta de Red, los Beacons, el Canal, la velocidad del Router, la Encriptación, el AUTH y el nombre de la Red Wifi.*]

:ballot_box_with_check: **Escaner de Dispositivos conectados a una Wifi** --> [*Muestra los dispositivos Wifi conectados a una Red Wifi, cuando finaliza el escaneo te crea un Gráfico en el que te muestra un esquema de los dispositivos conectados mostrando la MAC de los dispositivos, la cantidad de Tráfico, la distancia entre cada dispositivo y nuestra Tarjeta de Red, los paquetes de perdida, Notas y Probes.*]

:ballot_box_with_check: **Crear Redes Wifi de forma Masiva** --> [*La posibilidad de crear +100 Redes Wifi con nombres Random y nombres Personalizados.*]

:ballot_box_with_check: **Espiar el Trafico de una Red Local** --> [*Este apartado es realmente muy potente, al igual que útil al revelar de una forma sencilla y visual los secretos de los dispositivos conectados a una Red. El apartado cuenta con 3 opciones. La primera opción te permite realizar un escaneo instantáneo de la Red Local, mostrándote las IPs y MAC de los dispositivos conectados. A partir de ahí, puedes seleccionar cualquier dispositivo y acceder a su tráfico en tiempo real. La segunda opción va más allá al capturar de inmediato todo el tráfico generado por cada dispositivo. Y la tercera opción puede llegar a ahorrar mucho tiempo, ya que te ofrece un listado completo de todos los archivos PCAP generados en cada una de las sesiones. Al seleccionar uno de estos archivos, se abrirá con Wireshark para realizar un análisis exhaustivo. Esta herramienta es capaz de revelar una amplia gama de información, incluyendo páginas web visitadas, aplicaciones web utilizadas, protocolos de red en acción, el arte del "Packet Sniffing", la identificación de dispositivos y sistemas operativos (excluyendo el tráfico SSL), e incluso la exposición de usuarios y contraseñas no encriptadas.*]

:ballot_box_with_check: **Extraer el HandShake de una Red Wifi** --> [*Esta Opción nos facilita la tarea a la hora de recolectar el Handshake de una Red Wifi, ya que a veces puede llegar a ser una tarea tediosa. Este apartado está pensado para ser lo más sencillo posible para el Usuario, nos va abriendo consolas interactivas donde nos muestra información que necesitamos y tras finalizar se van cerrando de forma automática. El Ataque consiste en enviar paquetes de* **Disassociation** *a todos los usuarios de la Red durante 10 segundos para obligarles a conectarse de nuevo y obtener el Handshake de uno de los dispositivos.*]

:ballot_box_with_check: **Inhibir Redes Wifis y Dispositivos locales** --> [*Esta Opción ejecuta mi herramienta [Inhibitor](https://github.com/XDeadHackerX/Inhibitor) la cual es capaz de Inhibir cualquier (Red Wifi/Dispositivo Conectado) sin tener acceso a la Red Wifi víctima, para los que no disponen con una tarjeta de red compatible con el Modo Monitor, te da la opción de hacerle un DOS al router que estés conectado o a los dispositivos conectados a la Red.*]

:ballot_box_with_check: **Tarjeta de Red** --> [**Información de la Tarjeta de Red** *(Datos Técnicos, Interfaces, Drivers, Chipset, MACs, Modos Compatibles con la Tarjeta de Red, Qué tipo de Modo está Activo en la Tarjeta de Red, Tasa de Transferencia de Datos),* **Información Frecuencias** *(Frecuencias compatibles con tu Tarjeta de Red),* **Activar modo Monitor** *(Activa el Modo Monitor y Cambia la MAC, NO HACE FALTA PARA USAR LA HERRAMIENTA),* **Restablecer Tarjeta de Red** *(Desactiva el Modo Monitor, pone la MAC por defecto y reinicia el NetworkManager)*]


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

**[1]** No hace falta poner la Tarjeta en Modo Monitor, las opciones que requieren de este Modo se activara y se desactivara de forma automática.

**[2]** Las opciones 2, 3, 5 y 6 cuentan con Modo Seguro, haciendo que cambie la MAC de la Tarjeta por una random cada vez que se ejecute una de estas opciones.

**[3]** La herramienta soporta escaneos y ataques a las bandas Wifi 5GHz.

**[4]** La opción 6 instala y ejecuta una herramienta desarrollada por [mi](https://github.com/XDeadHackerX) llamada [Inhibitor](https://github.com/XDeadHackerX/Inhibitor), está disponible en mis repositorios.

**[5]** En la opción 5 una vez capturado el Handshake se almacena en la ruta requisitos/resultados/BSSID del Wifi/handshake-01.cap.

**[6]** En la Carpeta donde se encuentra el Handshake podremos encontrar 2 archivos más terminados en (-02.hccap) y (Hash.XXX-03), estos solo se generan por si el usuario también los requiere.

**[7]** En el apartado ([5]Extraer el HandShake de una Red Wifi) si no sabéis como crackearlo podéis combinar la herramienta con mi otra herramienta desarrollada por [mi](https://github.com/XDeadHackerX) llamada [The_Cracker](https://github.com/XDeadHackerX/The_Cracker) en la cual tiene un apartado específico para desencriptar de forma totalmente automatizada por medio de diccionario o fuerza bruta el Handshake, solo tendremos que arrastrar el Handshake a la terminal donde se ejecuta [The_Cracker](https://github.com/XDeadHackerX/The_Cracker) para él se encargue del resto.

**[8]** En el apartado ([4] Espiar el Tráfico de nuestra Red) es un apartado realmente útil para interceptar los paquetes que pasan por la red a la que estemos conectados, ahora, la herramienta está pensada para el escaneo de los paquetes más importantes (Webs, tráfico, credenciales, etc.) pero no tiene en cuenta absolutamente todas las comunicaciones que hay, ya que hay muchas que realmente no son útiles a la hora de espiar. En caso de querer capturar absolutamente todos los paquetes que pasen por la red, recomiendo utilizar la herramienta Wireshark.

**[9]** En caso de que tengas descargada una versión más antigua, te aconsejo borrarla y volver a instalar la herramienta (+requisitos) para solucionar errores y obtener mejoras, que hacen que la herramienta sea mucho mejor que las versiones anteriores.

## 🎬 Video 🎬 <a name="punto1"></a>

[![Cap-Wifi-Troll.jpg](https://i.postimg.cc/Yq2JDpdP/Cap-Wifi-Troll.jpg)](https://player.vimeo.com/video/815234454?h=9892561b2b&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479)

## 🔎 Versiones 🔎

<details>
  <summary>[ v1.0 ]</summary>
  <p align="justify">[#] Versión Original.</p>
</details>
<details>
  <summary>[ v1.1 ]</summary>
  <p align="justify">[#] Nuevo Apartado [4] Espiar el Tráfico de nuestra red, podremos ver que servicios Webs está usando un dispositivo de nuestra red o de todos los dispositivos de nuestra red (HTTP y HTTPS). Grandes cambios en el Apartado [2] Escáner Red/Wifi, podremos analizar los dispositivos conectados a nuestra red o ver las redes Wifi de alrededor (Dándote a escoger entre 3 herramientas para hacerlo) y los dispositivos Wifi conectados a los Wifis. Optimización del código, corrección de errores, mejoras visuales.</p>
</details>
<details>
  <summary>[ v1.2 ]</summary>
  <p align="justify">[#] La opción 4 quedo obsoleta y se ha remplazado por ([5] Extraer el HandShake de una Red Wifi), esta opción consigue de forma súper automática expulsar a todos los usuarios de la red wifi seleccionada durante 10 segundos para que cuando se vuelvan reconectar obtenga el Handshake y lo almacene en carpetas individuales.</p>
</details>
<details>
  <summary>[ v1.3 ]</summary>
  <p align="justify">[#] Nueva función dentro del Apartado ([2] Escáner Red/Wifi) Dentro de Wifi, en el caso de escoger la Opción de Aircrack-ng cuando finaliza el escaneo te crea un Gráfico en el que te muestra un resumen de los dispositivos conectados, mostrándote (Mac, Fabricante de la Mac, Tipo de dispositivo y tiempo conectados a la Red).</p>
</details>
<details>
  <summary>[ v2.0 ]</summary>
  <p align="justify">[#] Nueva función dentro del Apartado ([2] Escáner Red/Wifi) Dentro de Red Local, sé a añadido la posibilidad de hacer un escaneo de los puertos abiertos de una IP o de toda la Red. Nueva función dentro del Apartado ([2] Escáner Red/Wifi) Dentro de Wifi, se ha agregado "NmCli" a las opciones de escaneo Wifi para poder tener una opción que no requiera de Tarjeta de Red compatible con el Modo Monitor. Solucionado error que sucedía al generar el Gráfico de las redes Wifi y sus usuarios. Cambios al escanear los dispositivos de una Red Wifi Ajena, primero se hacía un escaneo con Wash para enumerar las redes Wifi, al ver que es un escáner irregular, que a veces deja de funcionar durante días se ha sustituido por "NmCli", el cual es mucho más rápido, no necesita activar el Modo Monitor y da toda la información requerida para hacer el segundo escaneo = Scanear Red Wifi Individual. La herramienta ha sido optimizada, eliminando 200 líneas de código gracias a la programación modular.</p>
</details>
<details>
  <summary>[ v2.1 ]</summary>
  <p align="justify">[#] Nuevo Apartado ([1] Tarjeta de Red), cuenta con las siguientes opciones: Información de la Tarjeta de Red (Datos Técnicos, Interfaces, Drivers, Chipset, MACs, Modos Compatibles con la Tarjeta de Red, Qué tipo de Modo está Activo en la Tarjeta de Red, Tasa de Transferencia de Datos), Información Frecuencias (Frecuencias compatibles con tu Tarjeta de Red), Activar modo Monitor (Activa el Modo Monitor y Cambia la MAC, NO HACE FALTA PARA USAR LA HERRAMIENTA), Restablecer Tarjeta de Red (Desactiva el Modo Monitor, pone la MAC por defecto y reinicia el NetworkManager). Se a mejorado el apartado ([5] Extraer el HandShake de una Red Wifi), para ser mas precioso y eficaz, reduciendo el margen de error. Se ha reducido el margen de errores con el Modo Monitor y mejorado la apariencia de la herramienta a la hora de comprobar el Modo de la Tarjeta de Red y Activar el Modo Monitor.</p>
</details>
<details>
  <summary>[ v2.2 ]</summary>
  <p align="justify">[#] Se a replanteado el Apartado ([4] Espiar el Trafico de una Red Local) dandole un giro de 360°, ahora es capaz de capturar y mostrar de forma sencilla y visual los secretos de los dispositivos conectados a una Red. El apartado cuenta con 3 opciones. La primera opción te permite realizar un escaneo instantáneo de la Red Local, mostrándote las IPs y MAC de los dispositivos conectados. A partir de ahí, puedes seleccionar cualquier dispositivo y acceder a su tráfico en tiempo real. La segunda opción va más allá al capturar de inmediato todo el tráfico generado por cada dispositivo. Y la tercera opción puede llegar a ahorrar mucho tiempo, ya que te ofrece un listado completo de todos los archivos PCAP generados en cada una de las sesiones. Al seleccionar uno de estos archivos, se abrirá con Wireshark para realizar un análisis exhaustivo. Esta herramienta es capaz de revelar una amplia gama de información, incluyendo páginas web visitadas, aplicaciones web utilizadas, protocolos de red en acción, el arte del "Packet Sniffing", la identificación de dispositivos y sistemas operativos (excluyendo el tráfico SSL), e incluso la exposición de usuarios y contraseñas no encriptadas.</p>
</details>


## ⭐☕ Creado por XDeadHackerX ☕⭐

**Si consideras que este proyecto ha sido útil, te agradecería que me apoyaras dándole una estrella a este repositorio o invitándome a un café.**

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XDeadHackerX)

Copyright © 2023, XDeadHackerX
