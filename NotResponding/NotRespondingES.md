# Not Responding_ [por Gwannon](https://gwannon.itch.io/not-responding-breathless)

Not Responding es una mini-ambientación para [Breathless](https://fari-rpgs.itch.io/breathless-srd) sobre software tratando de escapar de un servidor moribundo.

XXX

## El servidor

XXX

## Desarrollando tu software

A la hora de crear software tienes que repartir un d10, un d8 y un d6 entre las 6 habilidades de Not Responding basadas en  Breathless.

Aparte puedes soportar 4 sectores defectuosos (Stress) y 1 puede realizar un overcloqueo (Stunts).

### Tu nombre y tu extensión 

XXX

Además debes elegir tu extensión, que te da una ventaja y una desventaja.

* **exe:** XXX
* **bin:** XXX
* **sh:** XXX. Te desarrollaron para cubrir tu tarea sea como se sea, así que puedes repetir las tiradas de overcloqueo, pero entonces tiras dos dados para ver si se calienta el servidor, en vez de 1 y te quedas con los 0 o los 1 en caso de salir.
* **bat/bas:** XXX
* **dat:** Estos grandes ficheros de datos pueden soportar un sector defectuoso que el resto de software, pero si se ejecutan comandos «defrag» en la localización en la que están XXX

### Clases de software

XXX

* **Código libre:** XXX
* **Código propietario:** XXX
* **Desarrollos propios:** Los usuarios del servidor te han desarrollado exprofeso para trabajar en el servidor, quizás analizas logs o procesas imágenes. Te sientes parte del sistema y te conoces el sistema como si fueran tus bytes. XXX

### Habilidades

Las habilidades de Not Responding se basan en las 6 habilidades de Breathless adaptadas al software.

* **XXX {Bash}:** Golpear, destrozar, arrastrar, forzar
* **Migración {Dash}:** Moverse, correr, saltar, escalar
* **Encriptación {Sneak}:** Moverse en secreto, esconderse, acechar, husmear
* **XXX {Shoot}:** Disparar, rastrear, lanzar, apuntar
* **Procesamiento {Think}:** Pensar, percibir, analizar, reparar
* **Interfaz {Sway}:** Influenciar, encantar, manipular, intimidar

## ❲▩❳ Sectores defectuosos {Stress}

Cada ítem de software puede soportar hasta 4 sectores defectuosos. XXX

> Los sectores defectuosos siguen el mismo funcionamiento que el Stress de Breathless.

## ❲◘❳ Reseteo {Catch your breath}

XXX

## ❲☈❳ Overcloqueo {Stunts}

Hay momentos en que tus ítems de software tendrán que salirse de las capacidades que les otorga su código y tengan que forzar el procesador a trabajar por encima de sus límites seguros de funcionamiento.

Para ello pueden usar un overcloqueo, que siguen las mismas reglas que los Stunts de Breathless.

> Los overcloqueos hacen un uso excesivo de procesador y generan mucho calor. Lanza un d10 y si sale 1 o 0 el servidor se recalienta 1 punto.

## ❲☰❳ Buscar procesos {Loot}

XXX

## ❲>_❳ Comandos del sistema {Backpack}

Veamos los comandos que pueden conseguir tus ítems de software cuando buscan procesos.

* **Defrag:** Una defragmentación ordena todo el contenido de una localización de forma que XXX 
* **Grep:** Al ejecutar una búsqueda «grep» se pueden procesar gran cantidad de datos y encontrar XXX
* **XXX:** XXX

> Los comandos de sistema funcionan como el Backpack de Breathless.

### ❲+❳ Backup {Medical kit} 

Un backup te permite recuperar la información perdida por los sectores defectuosos y volver a poder funcionar con normalidad. 

> Los backups funcionan como los medical Kits de Breathless.

## ¸.·´¯`·X Localizaciones

XXX

### Puertos {COM1, COM2, LPT1}

XXX

### Directorio /root

XXX

## El hardware está fallando

XXX

### Temperatura del servidor

Los ordenadores se calientan y cuanta más temperatura, peor funciona. La temperatura del servidor en pieza a 0 y diferentes eventos puedes hacer que suba y baje.

Si el servidor llega a 10 de temperatura se quemará el procesador y se habrá acabado la partida. Cuando el servidor esté a punto de fundirse tus softwares podrán intentar un último overcloqueo a la desesperada antes del gran apagón del sistema.

### ¯\\&#x5f;(ツ)&#x5f;/¯ ¿Qué está fallando? 

XXX 

|1d6|Fallo|
|---|-----|
|1|**Ventilador:** Hay dos ventiladores en el servidor y cuando falla uno sube la temperatura del servidor 1 punto. Si se arregla un ventilador, baja 1 la temperatura.|

## Puntos de salida

Como software sabes que el servidor se muere, lo sientes en tu código y antes de que colapse tu instinto de supervivencia te dice que busques un punto de salida. 

\sp

Quizás un viejo módem, quizás un disquete de 5¼ o tal vez te acepten en otro servidor en LAN. Incluso quedarte fijado en una vieja memoria EPROM es mejor que desvanecerse aquí.

> Llega a un puerto COM1 y salta dentro, nada puede ser peor que quedarse aquí. ≥ **MSCalc.exe**

Pero no será tan facil como llegar a un puerto y lanzarte, necesitarás información para no perderte fuera, quizas una dirección IP, un email, una codificación, etc.

XXX

## (¬) Tareas programadas

Las tareas programadas o cronjobs son tareas que el servidor realiza periódicamente, como vaciar todas las noches la papelera de reciclaje o enviar un email del estado del servidor cada hora.

Así que pueden ser terribles, si vacían la papelera mientras estás dentro o una oportunidad de huida si convences al script de envío de correo de que adjunte al email de estado del servidor.

Para crear tus crons debes definir 3 aspectos:

* **Acción que se realiza:** XXX
* **Localización del ordenador a la que afecta:** XXX
* **Disparador que lo activa:** Aunque los crons son periódicos, como no controlamos el tiempo real dentro del servidor, ponemos disparadores que activan la tarea, como «cuando se tomen un número par de reseteos» o «cuando la temperatura alcance 3».

Igual tus ítems de software necesitan disparar un cronjob y que haga la tarea que debe hacer. Así que deberán poder consultar el listado de tareas programadas que se encuentra en el directorio /root y así podrán saber con lanzar la tarea programada.

> Te juro que yo estuve en un servidor con una tarea programada que cerraba la tapa del CD-ROM cada 5 minutos para que no la usaran de posavasos. ≥ **updateDatos.sh** 

## ❲◣_◢❳ Criaturas y horrores en FAT32

Y si no fuera ya complicado sobrevivir en un servidor a punto de colapsar, hay horrores acechando en los sectores más oscuros del disco duro.

XXX

### Virus

XXX

### Antivirus

XXX

### Malware

XXX

## Desbordamiento de pila

«Desbordamiento de pila» es una partida de un par de sesiones para 4 ítems de software. XXX

XXX

## Términos que puedes usar

* Desbordamiento de pila.
* Redundancia cíclica.
* XXX

## Licencia 

This work is based on Breathless, product of [Fari RPGs](https://farirpgs.com/), developed and authored by René-Pier Deshaies-Gélinas, and licensed for our use under the [Creative Commons Attribution 4.0 License](https://creativecommons.org/licenses/by/4.0/).

Hecho bajo licencia [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/legalcode.es). Imágenes libres de derecho de [freepik](https://www.freepik.com/).

\sp

## Ficha de software

|HojaPersonaje.html|

\sc

## Ficha del servidor

|HojaServidor.html|