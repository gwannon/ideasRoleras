\sinc

# Mazmorra binaria [por Gwannon_](https://gwannon.com/)

|asciiPortada.md|

\conc

\sp
 
**Mazmorra binaria** es una ambientación que puedes aplicar sobre tu **juego de rol de mazmorreo** favorito para **convertirlo en un mundo computacional y binario** de unos y ceros, enlaces simbólicos, carpetas y permisos.

Este suplemento **no aporta reglas de juego**, simplemente te da una ambientación que puedes aplicar a tus reglas de juego. Propone nombres de elementos clásicos del mazmorreo para darles un aspecto computacional, como convirtiendo a los personajes en scripts y la clase en el lenguaje en que ha sido escrito. Una típica trampa de paredes puede simularse con una tarea programada no para de copiar ficheros en una carpeta hasta que aplasta a tus scripts.

## Scripts

Los PJ no son seres de fantasía, sino **scripts** que deben adentrarse por diversos motivos en el sistema de carpetas para buscar algún fichero perdido, borrar algún malware dañino, etc.

### Lenguaje {Clases}

Uno de los elementos principales de los jugadores en los juegos de mazmorreo son su clase {guerrero, ladrón, mago, etc.}. Así que hemos **asignado un lenguaje de programación a cada clase básica** de estos juegos.

* **C {Guerrero}** Básico y sencillo, se ejecuta y hace su trabajo. Es lo más cercano al código máquina. No tiene complicadas bases de datos ni usa extrañas funciones como el MySQL. Puedes usar estos lenguajes para cuando trabajas con guerreros más especializados, C++, Objective-C, C#.
* **MySQL {Lanzador de conjuros}** Las sendas de la magia no son más extrañas que el SQL, así que si tienes un lanzador de conjuros puedes usar alguna de sus variantes según el origen de su magia: divina, arcana, natural, elemental, etc. Así tendríamos MySQL, PostgreSQL, SQLite, SQL Server, MariaDB, etc.
* **JAVA {Explorador}** El JAVA es la opción que se adapta a todas las situaciones, pero no es especialmente buena en ellos, así que es como el explorador, que ni es guerrero, ni es druida, ni ladrón, pero puede intentarlo. 
* **JS {Pícaro}** Anárquico e impredecible, el JavaScript es perfecto para representar a los pícaros.
* **CSS {Bardo}** Puede que digas que CSS no es un lenguaje de programación, pero yo sí lo pienso y creo que es perfecto para representar a los bardos.

### Formato {Especies}

Para representar la especie de tu PJ hemos usado los formatos de ficheros.

\sp

Te ofrecemos los 4 básicos que salen en la mayoría de juegos de rol de mazmorreo.

* **Texto plano {Humano}** El más básico de los formatos para la más básica de las especies.
* **Binario {Elfo}** Antiguos y poderosos y programados en los más antiguos lenguajes como C, los ficheros binarios son los elfos de los formatos.
* **Ejecutable {Enano}** Pragmático y cabezotas, los ejecutables como los enanos son de ideas fijas y de ponerse a trabajar al momento ante cualquier situación.
* **Compilado {Halfling}** Siguiendo con las costumbres medianas, los compilados están ahí tranquilamente en su carpeta a la espera de que algún otro script los invoque.

Si necesitas más especies más exóticas, puedes recurrir a compresiones, como ZIP o GZ, o a encriptados con diferentes sistemas, como SHA-256 o MD5.

### Atributos y otras puntuaciones

Los PJ en los juegos de mazmorreo suelen tener unos atributos básicos que representan varias cosas y aquí tienes sus adaptaciones computacionales.

* **RAM {Destreza}** Cuanta más memoria, más rápidos y precisos serán tus movimientos.
* **Procesador {Vigor}** El procesador es tu capacidad de hacer grandes esfuerzos de computación, de mover ficheros más grandes y lanzar comandos que son ejecutados con más potencia.
* **Permisos {Voluntad}** Cuanto mejores son tus permisos, mayor es tu voluntad para evitar que acedan a tus líneas de código, descubriendo tus bugs y tus fallos de seguridad, y a tus variables y constantes. Además, estarás más arriba en el sistema de fichero. También te permitirá tener más ficheros y scripts afines que te ayuden en tus aventuras.
* **Almacenamiento {Inteligencia}** Cuanto más almacenamiento tienes más datos puedes recordar y usar en tus incursiones.

Las **líneas de código** pueden usar como similar de los **puntos de vida** y cuando pierdes estos puntos, te quitan líneas de código y cuando te curas, escriben líneas de código nuevas, las recuperas de un _backup_ o de una versión anterior del gestor de versiones.

Muchos sistemas tienen puntos de magia {PM} o poder {PP}, en esos casos lo puedes representar usando cosas como la «memoria asignada» como los PM/PP máximos, «memoria en uso» como los PM/PP que aún te quedan y «liberar memoria» para gastar PM/PP.

\sp

Iniciativa, otro elemento muy normal, podemos denominarlo como XXX.

Si necesitas otras puntuaciones para representar, resistencia/cansancio o salud mental, puedes usar estas otras opciones.

* XXX

### Habilidades

Si tu juego tiene habilidades, usaremos comandos para simular habilidades

* **cd {Atletismo, nadar, escalar}** permite moverte por las carpetas, así que es el comando perfecto para representar correr, escalar, saltar, etc. Puede usarse **mv** para pruebas de fuerza que exijan mover ficheros.
* **grep {Buscar}** permite buscar patrones y expresiones regulares, lo que permite buscar en ficheros, crons, bus de datos, etc. 
* **cat {Averiguar intenciones}** permite ver el interior de los scripts y los ficheros, pudiendo averiguar sus intenciones.
* **wget {Conocimientos}** permite conectarte a una página web para obtener conocimientos sobre un tema, magia, religión, naturaleza, etc.
* **ls {Percepción}** permite ver lo que hay dentro del directorio e intentar buscar puertas secretas, pasadizos, enemigos escondidos, etc.
* **rn {Esconderse, sigilo, disfrazarse}** permite renombrar ficheros de forma que puedas hacerte o hacer a otros pasar por lo que no son. También puedes ocultarte poniendo un punto delante de tu nombre. 
* **make {Reparar, construir}** permite compilar de forma que unas líneas de códigos, unas bases de datos, unas librerias y unos ficheros de configuración crear y/o reparar un programa.
* **pwd {Supervivencia, orientacion}** permite saber dónde estás dentro del sistema de carpetas dándote tu _path_ actual.


## Directorio

XXX

### Sistema de carpetas {Mazmorra}

XXX

\sp

### Carpeta {Habitaciones y salas}

|asciiPasillo.md|

Cada carpeta del sistema de carpetas es una habitación del dungeon. Cada carpeta puede ser más grande o más pequeña según su contenido en ficheros y subcarpetas. Cuantos más ficheros/subcarpetas más grandes es la carpeta.

Normalmente las carpetas tienen una función, almacenar archivos de MP3, guardar imágenes JPG o PDF de facturas. Esto no deja de ser muy diferente a la despensa de la mazmorra donde se guarda la comida o el dormitorio donde duermen sus habitantes.

Los ficheros tienen una representación física como si fueran mesas, camas, estatuas de piedra. Por ejemplo, entras en una carpeta donde hay archivos ficheros EPUB a ambos lados de la carpeta como si fueran estatuas de piedra y un gran fichero PDF en el centro a modo de mesa de banquete.

### Directorio/carpeta protegida {Estancia con puerta con cerradura}

XXX

### Enlace duro {Puerta}

|asciiPuerta.md|

XXX

### Enlace suave {Pasadizo secreto}

|asciiPasadizo.md|

XXX

\sp

### Crons

Los _crons_ o tareas programadas son acciones que se ejecutan cada cierto tiempo. Son una forma fácil para explicar todo lo que funcione independientemente dentro del sistema de carpeta.

Siendo creativo un cron puede explicar bastantes cosas de las que pueden pasar en una mazmorra. Veamos algunos ejemplos:

* Cada cierto tiempo un cron hace una copia de seguridad de una carpeta. Todo el que este dentro de esa carpeta se moverá más lento debido a gasto de procesador que significa eso. Esto puede simularse suelos llenos de agua o embarrados donde moverse sea difícil o zonas mágicas con hechizos de ralentizar lanzados de forma permanente.
* Un cron borra los ficheros más antiguos de una carpeta de forma que los restos de cadáveres de antiguos monstruos muertos desaparecen y otro cron copia siempre unos ficheros con las trampas de la carpeta de forma que las vuelve a reactivar y tus scripts deberán volver a enfrentarse con las trampas que habían desactivado.
* Un cron puede tener en constante movimiento un fichero de un sector del disco duro a otro de forma que si tus scripts se acercan sin darse cuenta a ese fichero sean golpeados y pierdan líneas de código. Con esto puedes simular trampas como aspas afiladas, muros deslizantes, péndulos cortantes, cuchillas que salen desde el suelo.

### Path {Mapeado de la mazmorra}

XXX

A diferencia de una mazmorra normal, al diseñar un sistema de carpetas no importa que físicamente sea viable, solo importa que su ruta dentro del sistema de carpetas sea lógica. Aunque al dibujarlo las carpetas y subcarpetas no se van a superponer y, por tanto, podría pasarte que físicamente sean inviable tienes que pensar que electrónicamente si son viables.

Por ejemplo, los enlaces simbólicos que conectan dos carpetas que están en diferentes carpetas superiores existen aunque en tu dibujo no haya espacio para ellos y se superpongan sobre otras carpetas.

## Idiomas

En muchos juegos mazmorreros es muy normal el uso de idiomas arcanos y de runas. Aquí vamos a usar el **_l33t_** y el **código ASCII**. El l33t es lo que comúnmente conocemos como idioma hacker, esos textos donde la «A» se sustituye por un «4» o una «E» por un «3».

XXX

Piensa en ellos como el élfico {l33t} y el rúnico {código ASCII} y así sabrás que donde poner cada lenguaje.

\sp

Por último tendríamos, aunque no sea un idioma, el **ASCII Art**, esos dibujos creados caracteres como paréntesis, barras, dos puntos, etc. y que tratan de hacer imágenes. Podrían ser desde el sencillo :) o XD, hasta estructuras más complejas como verás en el arte de libro. Si entran en una gran sala a semejanza de un gran salón medieval podrías describirles que las limites de la carpeta están decorados con intrincados diseños de animales o que la XXX que han encontrado tiene ASCII Art decorándola.

Hay montones de páginas que ofrecen ASCII Art gratuito y que puedes usar en tus partidas, para explicar los diseños que tus scripts pueden encontrar en sus aventuras en diferentes elementos. 

## Disparadores y deamons {Trampas}

Los virus, los administradores de sistemas y los propios usuarios protegen las carpetas donde están o donde guardan sus ficheros importantes, es por ello los llenan de trampas para que los scripts no puedan avanzar por el _path_ o sean borrados antes de llegar de tu objetivo.

XXX

\sp

### Trampa de paredes móviles

Esto se puede conseguir con un cron que copia a gran velocidad archivos de gran dentro de la carpeta, de manera que cada vez hay menos espacio y los scripts acaben aplastados.

### Trampa de compresión

XXX archivo comprimido

## Magia y habilidades especiales

La cantidad de hechizos, habilidades especiales, trucos y maniobras que puede tener un juego de rol de mazmorreo pueden llegar a ser muy grandes. Así que trataremos de dar unas ayudas e indicaciones para que puedas hacer las conversiones que necesites.

### XXX {Hechizos}

|asciiMago.md|

XXX

Los hechizos de ralentizar puedes asociarlo con reducir tiempos de proceso o asignar menos recursos de memoria, mientras que los de aceleración todo lo contrario.

Los hechizos que juegan con versiones falsas de ti, pueden usar los _backups_ para referirse a esas copias. Cuando son solo parte de ti, podemos trabajar con la caché, unas copias rápidas de ti mismo para evitar procesar todo un script cada vez que se ejecute. Así un hechizo que te dé más PV puede decir que estás usando parte de tu caché.

XXX

Las escuelas de magia o las tradiciones mágicas pueden ser representadas XXX

### Habilidades especiales

Subrutinas XXX

## Borrado y diferentes estados

La muerte viene representada por el borrado. Los scripts no mueren, sino que son borrados, es decir, los sectores del disco duro donde se guardan los 1 y 0 que lo representan son desmagnetizados de forma que su código no se puede conseguir.

Antes del borrado final, puede haber estados de «muerto casi en su totalidad». En estos casos podemos hablar de que está en la papelera o que su dirección en el disco de almacenamiento ha sido borrada de la FAT {File Allocation Table}, pero no magnéticamente del disco con lo que podría ser recuperado.

\sp

Resucitar a alguien es tan fácil como buscar una copia de seguridad y descomprimirla y si no hay copias de seguridad es que está más allá de la resurrección.

### Estados

|asciiEstados.md|

XXX

* **En cuarentena {Apresado}** XXX
* **Bugeado {Aturdido}** XXX
* **XXX {Cegado}** XXX
* **XXX {Derribado}** XXX
* **Hibernando {Dormido}** XXX
* **Sin permisos de ejecución {Incapacitado}** XXX
* **XXX {Mareado}** XXX
* **Bloqueado {Paralizado}** XXX

## Librerías y tokens

|asciiEspada.md|

Mediante la inclusión de librerías de código {equipo} puedes añadir funcionalidades nuevas a tus scripts o mejorar las que ya tienes. XXX

### Armas
 
La cantidad de armas distintas que puede haber en los juegos de mazmorreo es tan grande que lo mejor es no modificarlas mucho, simplemente añadirle sufijos o prefijos que le den un toque informático. Por ejemplo:

|1d20|&nbsp;|1d20|&nbsp;|1d20|&nbsp;|1d20|
|---|---|---|---|---|---|---|---|---|---|---|---|
|1|Ciber|6|láser|11|Tecno|16|variable|
|2|de luz|7|Hexa|12|de pulsos|17|Pro|
|3|Pre|8|binaria|13|reseteada|18|cacheada|
|4|overclokeada|9|redundante|14|óptica|19|debugeada|
|5|hasheada|10|tipada|15|encriptada|20|constante|

### Armaduras

XXX

### Herramientas

XXX

\sp

### Equipo de aventuras

Cosas como cuerdas, saco de dormir, provisiones, etc. Son fácilmente adaptables al mundo de la informática.

* Cable bus {cuerda}
* Datos de transferencia {provisiones}
* Pasta térmica {saco de dormir}
* Enlace a datos permanentes {papel y tinta}

### Objetos mágicos 

Usar términos como «mejora», «actualización», «bus», «redundancia», etc. Es una opción muy buena para darle ese aire microinformática que buscamos.

Si tenemos unos guantes de Vigor y el vigor lo hemos llamado Procesador, podemos llamarlo una mejora de procesador, redundancia de procesador o un bus de procesador.

## Escalas y tamaños

Si necesitas trabajar con escalas y tamaños, puedes usar kilobytes {Kb} para cosas de tamaño humano, megabytes {Mb} para monstruos como trolls o ents y gigabytes {Gb} para dragones y gigantes.

Por debajo puedes usar bytes {B} para espadas, cascos, escudos o sacos de dormir. Objetos más pequeños como anillos y colgantes deberían ser medidos en bits, si no lo has usado como moneda.

## Misiones, iniciadores y resultados

|asciiCerveza.md|

Las aventuras mazmorriles tienen unos tropos comunes que marcan sus inicios. 

Siempre hay alguien que necesita que tus scripts se adentren en el sistema de carpetas.  Veamos algunas opciones:

* En la **unidad de disco extraíble {Taberna}** un siniestro script encapuchado os contratará para hacer una incursión a un sistema de directorios cercano.
* El **SysAdmin {Conde, duque o rey de las tierras}** os invoca a través de la línea de comando para que salvéis a toda la computadora trayendo algo del sistema de carpetas.
* Quizás el **antivirus {alguacil o jefe de la guardia}** necesita que busquéis en el sistema de carpetas a un presunto criminal malware y lo traigáis a cuarentena.

\sp

* El **programa de ejecución de un paquete de ofimática {rico comerciante}** necesita recuperar unas copias de seguridad.

La misión no es solo adentrarse en un sistema de archivo, algo especial hay que hacer.

* **Recuperar un fichero de datos muy especial {objeto de poder}** perdido o enviado a la papelera.

* Debes **aplicar un _fix_ {ritual}** en una carpeta concreta del sistema para que no autodestruya todo el sistema.
* **Resetear el sistema** antes de que algún script malvado termine sus procesos de actualización y se haga con el control de todo el ordenador.
* **Limpiar de virus, troyanos y malware** un sistema de carpetas, ya que podrían expandirse a más sistemas de archivos.
* **Rescatar unos _backups_** de unas facturas en hoja de cálculo de un grupo de _bugs_ que se esconden en unas carpetas de sistema de una versión antigua y en desuso del sistema operativo {templo en ruinas}.

## Helpers

|asciiAntorcha.md|

Si en tu juego de referencia, los personajes pueden contratar portaantorchas, escuderos o curanderos, en Mazmorra binaria tus scripts pueden tener ayudantes, archivos a su servicio que les ayudan cuando entran en un sistema de carpetas.

Estos ayudantes no son scripts, tienen muchísimas menos capacidades, pero tus scripts los usan para determinadas tareas.

* **JSON {Escudero, portaantorchas}** como el archivo de configuración puedes usarlo para que porte los datos y variables que tú no quieres portar, pero necesitas en tus incursiones 
* **Copia de seguridad {Curandero}** con sus conocimientos básicos de tu código, puede recuperar las líneas que has perdido en tus aventuras.
* **prompt $ {Cartografo}** este fichero se encarga de realizar tareas menores como _scrapear_ las carpetas y mapear su contenido.
* **Script BASH {Mercenario}** A diferencia de los anteriores si es un script, pero es muy básico, pudiendo hacer muy pocas cosas, como copiar archivos, borrarlos, crear archivos, los típicos comandos de línea de comandos.

\sp

## Bestiario

En este bestiario no te vamos a dar un listado de monstruos con estadísticas, sino una serie de consejos para convertir los monstruos de tu juego mazmorreros en unos y ceros.

### Dragón binario y hexadecimales

|asciiDragon.md|

XXX

Si arma principal es su aliento de bucle infinito, aunque sus garras hexadecimales y sus mordiscos binarios también son temibles.

### Buglins

|asciiGoblin.md|

Es una mezcla de «bug» + «goblins». Representa a todas esas razas pequeñas como goblins, mites, kobolds o boggles. Puedes ponerles diferentes complementos para diferenciarlos, como buglins de sistema, buglins de papelera, buglins de memoria, etc. 

### Periférico nulo {Limo}

|asciiLimo.md|

También conocido como «device null» en inglés o «/dev/null» por su _path_ en el sistema, es un archivo especial que descarta toda la información que se escribe en o se redirige hacia él. Así que, como los limos, se va tragando todo lo que encuentra a su paso y lo hace desaparecer.

Mientras que los limos tienen diferentes tipos, XXX

\sp

## Ejemplo de conversión de mazmorra

XXX 

La mazmorra de los sectores corruptos.

\sp

## Licencia

Creado para la [Weirdungeon JAM](https://itch.io/jam/weirdungeon) organizada por [Asaltadoras del Rol](https://asaltaelrol.itch.io/). El código fuente puedes encontrarlo en [GitHub/IdeasRoleras](https://github.com/gwannon/ideasRoleras/tree/main/Weirdungeon).

El ASCII Art ha sido creado por mí o ha sido sacado de diferentes fuentes:

* El dragón de la portada es de [emojicombos.com](https://emojicombos.com/dragon-ascii-art)
* El dragón de la contraportada es de [emojicombos.com](https://www.asciiart.eu/art/60e7446303c13a88)
* El goblin está sacado de [ascii.co.uk](https://ascii.co.uk/art/goblin)
* El dragón del bestiario es obra de Roland Waylor publicado en [asciiart.eu](https://www.asciiart.eu/art/9e65db4400fdf604).
* El mago de Rowan Crawford publicado en [asciiart.eu](https://www.asciiart.eu/art/7ce3d3cd0f6dc5db).
* La jarra de cerveza de Elissa Potier publicada en [asciiart.eu](https://www.asciiart.eu/art/476b636d123b6ad8).
* La espada publicada en [asciiart.eu](https://www.asciiart.eu/art/2e8c693919b640a0).

Este material está licenciado bajo la Licencia Entre Colegas (EC) v1.0. Puedes compartirlo, adaptarlo (siempre que no se use en obras derivadas que incorporen contenido de IA generativa) y jugarlo libremente, pero está PROHIBIDO cobrar dinero por dirigir partidas, participar en sesiones pagadas, o cualquier forma de comercialización de las partidas, cuando estas utilicen parte o la totalidad de este material. El uso del contenido para fines comerciales y para entrenamiento de IA generativa también está prohibido. Para usos permitidos y restricciones completas, consulta la licencia íntegra en [davrivas.itch.io/licencia-entre-colegas](https://davrivas.itch.io/licencia-entre-colegas).

\sp

|asciiContraportada.md|

> Mazmorra binaria es una ambientación que puedes aplicar sobre tu juego de rol de mazmorreo favorito para convertirlo en un mundo computacional y binario de unos y ceros, enlaces simbólicos, carpetas y permisos. Propone nombres de elementos clásicos del mazmorreo para darles un aspecto computacional. Convierte a tus personajes en scripts y la clase en el lenguaje en que ha sido escrito, explora los directorios de carpetas en busca de información valiosa, simula la típica trampa de aplastamiento describiendo una tarea programada que no para de copiar ficheros en una carpeta hasta que aplasta a tus scripts, ...
