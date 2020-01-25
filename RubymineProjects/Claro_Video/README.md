![Calabash Android Automation](https://www.satlogo.com/hires/cc/claro_musica_co.png)

## Prerequisitos:
I. Sistema operativo:
 - MAC OS 10.11 El Capitán o Posterior.
 - Linux en sus diferentes presentaciones.
 
 ----
 Nota: En caso de requerir Windows, algunos de los sitios proporcionados proveen información de instalación.
 Sin embargo, no podremos dar soporte completo. 
 ----
 
II. Software
 - RubyMine [https://www.jetbrains.com/ruby/]
 - JMeter [http://jmeter.apache.org/] (`brew install jmeter`)
 - Google Chrome [https://www.google.com/chrome/browser/desktop/index.html]
 - Mozilla Firefox versión 47.0.1 [https://ftp.mozilla.org/pub/firefox/releases/47.0.1/]

## Instalación:

### Homebrew (para usuarios de MAC OS)

Homebrew es el manejador de paquetes de MAC, con el cual se puede instalar software fácilmente.

La guía de instalación se encuentra disponible en el siguiente link:

https://brew.sh/

### Ruby Version Manager (RVM)

Ruby Version Manager es el administrador de Ruby.

Con él, po demos decidir qué versión de Ruby usar en qué momento.

Se puede instalar fácilmente con la guía que aparece en su sitio web:

https://rvm.io/rvm/install

### Ruby Programming Language (Ruby)

Una vez instalado RVM, es posible instalar Ruby.

Se requiere instalar desde Ruby v2.0 en adelante.

La guía de uso de RVM se encuentra disponible en la siguiente liga:

https://rvm.io/rvm/install#try-out-your-new-rvm-installation

### Gemas mínimas para el proyecto

Tras haber instalado Ruby, se requiere instalar la gema `bundler`

Esto se puede realizar mediante el comando `gem install bundler`

Una vez terminado el proceso, la configuración del proyecto debe ser relativamente simple.

### Versionamiento: Git

Una parte importante para el proyecto es el manejo y uso de versiones.

Para instalar Git, se puede ejecutar directamente el comando

`brew install git`

Opcionalmente, puede descargarse el instalador directamente desde el sitio web, aunque teniendo Homebrew esto no es necesario.

### Instalación de drivers

Para ejecutar Webdriver correctamente, es necesario instalar drivers.

Safari:
 - Ingresar al sitio de drivers para el navegador:
 
 http://selenium-release.storage.googleapis.com/index.html
 
 - Descargar e instalar la versión 2.45.
 
Chrome:
 - Para instalar el driver de chrome, se agrega una sección adicional a continuación.
 
### Chrome Driver: Node y Paths

Primeramente, es necesario instalar Node para poder contar con la versión más estable de chromedriver.

`bundle install node`

Una vez instalado, en la terminal (en el directorio raíz) es necesario ejecutar:

`npm init`

Esto permite tener un proyecto prototipo vacío para posteriormente instalar chromedriver:

`npm install chromedriver`

Una vez instalado, es necesario agregarlo al `Path` del sistema para poder ser usada por webdriver:

- Copiar la ruta donde se encuentra chromedriver.
  Esta se muestra tras haber ejecutado la instalación de chromedriver en el paso anterior.
- Navegar al directorio `/etc`

  `cd /etc`

- Editar (como administrador) el archivo paths

  `sudo vim paths` (el sudo es importante, para poder guardarlo posteriormente)
 
- Agregar la ruta donde se encuentra instalado chromedriver.

Una vez realizado esto, chromedriver está listo para ser usado.

## Configuración del sistema

### Entorno Java

Para el correcto funcionamiento de Java, es necesario agregar la variable de entorno `$JAVA_HOME`.

Esto se logra con los siguientes pasos:

- Obtener la ubicación del archivo ejecutable ejecutando:

 `which java`
 
- Abrir el archivo `.bash_profile` en el caso de MAC, y exportar la variable de entorno
  agregando la siguiente línea:

 `export JAVA_HOME= <resultado de ejecutar which java>`

Una vez realizado esto, cerrar un volver a abrir la terminal.
Para verificar que se haya exportado correctamente, se puede ejecutar

`echo $JAVA_HOME`

y verificar que la variable se encuentra disponible.

## Configuración del proyecto

Para configurar el proyecto, se requieren los siguientes pasos:

- Entrar a la carpeta en la que se encuentra el archivo Gemfile.
  Regularmente esta carpeta es `global`
- Ejecutar el bundler. Esto se logra mediante el comando `bundle install`

Una vez ejecutado esto, la configuración del proyecto debe estar lista.

## Ejecución de Scripts

Los scripts se encuentran clasificados por `navegador` - `país`.

Para ejecutar los mismos, se debe entrar al directorio

`run/<navegador>/<país>`

y posteriormente, ejecutar el script por ambiente.

### Ambientes de prueba

Archivos `lmx` para ambiente de tienda

Archivos `dmx` para ambiente de demo

Archivos `tmx` para ambiente de test

![Selenium](http://www.calcey.com/wp-content/uploads/2014/05/se-cucumber-logo2.png)
