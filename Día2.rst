:title: Arquitectura de Software
:author: Daniel Saguez Tezanos Pinto
:description: Actualizar conceptos de Aquitectura de Software
:keywords: presentación, restructuredtext, impress.js, REST, C++
:data-transition-duration: 1500
:auto-console: false
:skip-help: true
:css: css/presenta.css

.. header::
   .. image:: Imágenes/MARCA-UAB-UAB.png
            :width: 8%
            :align: left

.. title: Mejorar el rendimiento de nuestro sitio web

----

:hovercraft-path: M 63.287736,46.174855 C 58.500583,44.226009 60.294582,37.17833 63.894669,34.881528 70.4077,30.230102 79.914288,34.476675 82.971729,41.314281 88.129402,51.877216 80.913277,65.139552 70.15433,68.595465 56.838611,73.396407 41.21587,65.151769 36.211424,52.226526 29.431059,36.290474 37.930341,16.628889 53.108005,9.0319171 67.664662,1.1863314 86.495437,4.4838176 98.725993,15.185366 111.92975,26.248792 117.09671,45.230349 112.53901,61.678622 108.14789,79.098948 94.025848,93.578297 76.690893,98.345197 c -3.368038,0.98251 -6.83046,1.641224 -10.324038,1.963683

.. :hovercraft-path: m 122.28991,63.297001 c -3.9067,4.685824 -9.24495,7.983145 -13.97059,11.804638 -3.91131,3.059784 -8.09528,5.803224 -11.872502,9.012517 -2.519766,4.007507 -3.097278,9.065379 -6.157559,12.739607 C 85.90854,97.044744 81.807647,94.02673 77.715321,92.466235 73.536644,90.795582 69.69668,88.011517 65.33847,86.982703 56.033722,87.147989 46.791321,89.400023 37.485146,88.78317 35.040555,85.304189 35.604862,80.154504 34.773296,75.924332 33.918716,69.971624 34.204804,63.697871 31.354741,58.227778 29.382369,52.731051 26.392746,47.396199 25.706306,41.55536 29.822694,35.803384 35.693697,31.526493 40.691328,26.556578 46.555946,20.698195 51.161363,13.582531 57.589985,8.2744274 c 5.39413,-0.954145 11.021435,1.223336 16.415301,1.9772816 8.11656,1.858907 16.117538,4.184578 24.24743,6.016131 4.443024,1.28261 9.187324,1.969374 13.284884,4.170057 2.03928,6.061175 1.98159,12.639916 2.84775,18.95182 -0.0569,5.000162 1.97243,9.479104 4.27319,13.792399 1.36441,3.27225 3.43806,6.513907 3.63137,10.114885 z

:id: titulo

###########################################
Mejorar el rendimiento de nuestro sitio web
###########################################

----

.. image:: Imágenes/Thaloz/ThalozTalks.png
   :width: 100%

----

:id: contexto

Contexto
^^^^^^^^

:id: contexto

----

:id: introducción

Tenemos datos que publicar
##########################

hay más de 1.000 usuarios
^^^^^^^^^^^^^^^^^^^^^^^^^

:id: introducción

----

- UMSS, UMSA, ..., etc
- INE
- OEP
- Los Tiempos, La Razón, ..., etc
- Viva, Tigo, Entel

----

:id: primero

Identificar el Problema
#######################

- *Procesador*
- *Memoria*
- *Lenguaje* (**C++**, Java, PHP, Python, Node.js)
- *Arquitectura*
- *Base de Datos* (MariaDB, PostgreSQL)
- *Servidor HTTP* (Apache, Nginx, Cherokee)
- *Políticas de Seguridad*

----

:id: clave

- *Ancho de Banda*
- **Latencia**

----

:id: soluciones

Soluciones
^^^^^^^^^^

- veamos que hizo Facebook

----

:id: hiphop

Hip·Hop
########


- `HipHop for PHP <https://en.wikipedia.org/wiki/HipHop_for_PHP>`_
  (HPHPc) es un `Transpilador <https://es.wikipedia.org/wiki/Transpilador>`_ de PHP a C++. (descontinuado)

----

:id: hhvm

HHVM
####

`Máquina Virtual HipHop HHVM <https://en.wikipedia.org/wiki/HipHop_Virtual_Machine>`_
es una máquina virtual de código abierto basada en la compilación just-in-time
(JIT) que sirve como motor de ejecución para el lenguaje de programación Hack.

Mediante el uso del principio de compilación JIT, el código Hack se transforma
primero en código intermedio de HipHop (HHBC), que luego se traduce dinámicamente
a código de máquina x86-64.

----

:id: hack

`Hack (programming language) <https://en.wikipedia.org/wiki/Hack_(programming_language)>`_
##########################################################################################

Es un lenguaje de programación para la maquina virtual HipHop, y es un dialecto de PHP.

----

¡ Pero no se como es la infraestructura de Facebook !
#####################################################

:id: no-facebook

----

:id: hhvm_performance

HHVM en Wikipedia
#################

**2014-10-08** HHVM es lo mejor desde el pan de molde

.. image:: Imágenes/HHVM_page_editing_time.png
   :width: 60%

.. image:: Imágenes/HHVM_backend_latency_graph.png
   :width: 60%

`Wikipedia_Signpost <https://en.wikipedia.org/wiki/Wikipedia:Wikipedia_Signpost/Single/2014-10-08#HHVM_is_the_greatest_thing_since_sliced_bread>`_

----

:id: wikipedia


Wikipedia
#########

- Hasta el 2004 solo usaban un servidor
- Actualmente recibe entre **25,000 y 60,000** peticiones por segundo.

----

:id: ApacheBackendRequestRate2022


.. image:: Imágenes/ApacheBackendRequestRate2022-10-20_12-50.png
   :width: 100%

`Apache backend request rate, by traffic cluster <https://grafana.wikimedia.org/d/000000580/apache-backend-timing?orgId=1&from=1666111702824&to=1666284502824&viewPanel=2>`_

----

:id: wikipedia-servers-2004

.. image:: Imágenes/Wikimedia-servers-2004-08-24.png
   :width: 100%

----

:id: wikipedia-servers-2005

.. image:: Imágenes/Wikimedia-servers-2005-01-30.png
   :width: 100%

----

:id: wikipedia-servers-2006

.. image:: Imágenes/Wikimedia-servers-2006-05-09.svg
   :width: 100%

----

:id: wikipedia-servers-2008

.. image:: Imágenes/Wikimedia-servers-2008-11-10.svg
   :height: 1000px

----

:id: wikipedia-servers-2010

.. image:: Imágenes/Wikimedia-servers-2010-12-28.svg
   :height: 1000px

----

:id: wikipedia-servers-2012

.. image:: Imágenes/Wikimedia_Servers.svg
   :width: 100%

----

Principio de Pareto
###################

«el 80% del esfuerzo de desarrollo (en tiempo y recursos) produce el 20% del
código, mientras que el 80% restante es producido con tan solo un 20% del
esfuerzo».

----

- `Donald Knuth <https://en.wikipedia.org/wiki/Donald_Knuth>`_:
  "Structured Programming With GoTo Statements",
  Computing Surveys, Vol. 6, No. 4, **December 1974**

"debemos de olvidar las pequeñas eficiencias, digamos alrededor del 97% del tiempo"

.. note:: «En el artículo de Donald Knuth "Structured Programming With GoTo Statements"
  escribió: "Los programadores pierden enormes cantidades de tiempo pensando o
  preocupándose por la velocidad de las partes no críticas de sus programas, y
  estos intentos de eficiencia realmente tienen un fuerte impacto negativo cuando
  a la depuración y el mantenimiento; **debemos de olvidar las pequeñas eficiencias,
  digamos alrededor del 97% del tiempo:** la optimización prematura es la raíz de
  todo mal. Sin embargo, no debemos dejar pasar nuestras oportunidades en ese
  **crítico 3%**".»

----

- **premature optimization is the root of all evil**
  (optimizar de manera prematura es la raíz de todos los males)

----

+ Sin embargo, no debemos dejar pasar nuestras oportunidades en ese
  **crítico 3%**.

----

+ Un buen programador no se dejará llevar por la complacencia de su razonamiento,
  será prudente al mirar cuidadosamente el código crítico;
  **y solo después de que se haya identificado(midiendo) ese código**.

----

+ Un error común es hacer juicios a priori sobre qué partes de un programa son
  realmente críticas, ya que la experiencia universal de los programadores que han
  estado **usando herramientas de medición** ha sido que sus conjeturas intuitivas
  fallan. -« **Diciembre 1974** `DK <https://en.wikipedia.org/wiki/Donald_Knuth>`_»-

----

Representational State Transfer
###############################

`Restful <https://en.wikipedia.org/wiki/Representational_state_transfer>`_
Representational state transfer (REST) es la arquitectura de software que utiliza una interfaz uniforme entre componentes físicamente separados, a menudo a través de Internet sobre una arquitectura Cliente-Servidor

----

Introducción
############

- Algoritmo Divide y vencerás (divide et impera, Aulus Gabinius  {169–170 BC} )
- Heurística con Software Libre

----

Algoritmo Divide y vencerás
############################

En las `CC <https://es.wikipedia.org/wiki/Ciencias_de_la_computaci%C3%B3n>`_, el término divide y vencerás hace
referencia a uno de los más importantes paradigmas de diseño algorítmico.

La idea central es de manera recursiva un problema dividirlo en
dos o más subproblemas de igual tipo o similar. Hasta que
se llega a un resultado simple.

Al final, las soluciones a cada uno de los subproblemas se
combinan para dar una solución al problema original.

.. note:: En política y psicología,
   divide y vencerás o dividir para reinar (del griego: διαίρει καὶ βασίλευε,
   diaírei kaì basíleue) es ganar y mantener el poder mediante la ruptura en piezas
   de las concentraciones más grandes, que tienen individualmente menos energía. El
   concepto se refiere a una estrategia que rompe las estructuras de poder existentes
   y evita la vinculación de los grupos de poder más pequeños. Podría ser utilizada
   en todos los ámbitos en los que, para obtener un resultado favorable, es en primer
   lugar necesario o ventajoso romper o dividir lo que se opone a la solución o a un
   determinado problema inicial.

----

Heurística en Software Libre I
##############################

El problema no solo es mio, entonces ya debe haber alguien con una solución

- Buscar Solución en Software Libre(GitHub, GitLab, Source Forge, etc.)
- Escoger una
- Probar si cumple con mis: Requerimientos y/o Necesidades.
- Si no cumple, entonces: probar otra

----

Heurística en Software Libre II
###############################

- Probé muchas y ninguna me convence
- Escoger la más cercana y adaptarla
- Crear un proyecto Nuevo **(Evitar)**

----

C++ vs Python vs JavaScript vs Java
###################################

Comparación

----

C++
###

+ Velocidad en tiempo de ejecución (Performance)

- **Complejo**
- Tiempo de programación (¡¡¡Donde esta el Dinero!!!)

----

Python
######

+ Simple (Tiempo de Programación)

- Tiempo de Ejecución (performance)

----

Java
####

+ Performance, Mejor de Python inferior a C++

- *Menos complejo que C++ pero más que Python*

----

JavaScript
##########

+ corutinas (paralelo)

- No fue diseñado para uso general(Navegador)

----

`fannkuch-redux <https://benchmarksgame-team.pages.debian.net/benchmarksgame/performance/fannkuchredux.html>`_
##############################################################################################################


=== ================== ========== ======= =========
×   source             secs       mem     cpu
=== ================== ========== ======= =========
1.0 Rust #4                7.21    10,932   28.34
1.0 C gcc #5               7.53    11,224   29.37
1.1 Rust #5                7.77    10,932   30.49
1.1 C++ g++ #5             7.99    10,936   31.23
1.1 Chapel #2              8.09    10,932   32.18
1.1 Ada 2012 GNAT #3       8.23    10,936   32.72
1.1 Go #3                  8.25    10,936   32.92
1.2 F# .NET #6             8.33   106,496   32.25
1.2 OCaml #3               8.76    11,132   34.99
1.2 OCaml #4               8.77    11,128   35.06
1.3 C# .NET #6             9.16    30,572   36.34
=== ================== ========== ======= =========

----

=== ================== ========== ======= =========
×   source             secs       mem     cpu
=== ================== ========== ======= =========
1.3 C++ g++ #2            9.51     10,912   37.33
1.4 F# .NET #5            9.75    111,368   38.19
1.4 C++ g++ #4            9.82     10,912   38.52
1.4 Lisp SBCL #4          9.96     29,748   39.01
1.4 Classic Fortran #3    10.26    11,160   40.95
1.4 C++ g++               10.39    10,912   40.77
1.5 Free Pascal           10.54    11,220   42.09
1.5 Java                  10.71    40,324   42.25
1.5 Node js #5            11.08    81,124   43.87
1.6 Go                    11.83    11,128   47.26
 40 Python 3 #4          285.20    14,264   18 min
=== ================== ========== ======= =========

----

:id: cpp

+------------------------+----------------------------------------------------+
|                        | `C++ <https://en.wikipedia.org/wiki/C++>`_         |
+========================+====================================================+
|logo                    | .. image:: Imágenes/ISO_C++_Logo.svg               |
|                        |    :height:  80em                                  |
+------------------------+----------------------------------------------------+
|extensiones             | ``.h .hh .hpp .hxx .h++ .cc .cpp .cxx .c++``       |
+------------------------+----------------------------------------------------+
|Paradigmas              | **procedural, imperativo, funcional,               |
|                        | orientado a objeto, genérico, modular**.           |
+------------------------+----------------------------------------------------+
|Apareció por primera vez| 1985 ( hace 38 años )                              |
+------------------------+----------------------------------------------------+
|Diseñado por            | **Bjarne Stroustrup**, Bell Labs                   |
+------------------------+----------------------------------------------------+
|Stable release          | C++20 (ISO/IEC 14882:2020)                         |
+------------------------+----------------------------------------------------+
|Release date            | 15 de diciembre del 2020; hace 2 años              |
+------------------------+----------------------------------------------------+
|Preview release         | C++23                                              |
+------------------------+----------------------------------------------------+
|Disciplina de tipos     | Estático, fuerte, nominativo, parcialmente inferido|
+------------------------+----------------------------------------------------+

----

+--------------------+-------------------------------------------------+
|                    | `C++ <https://en.wikipedia.org/wiki/C++>`_      |
+====================+=================================================+
|Implementaciones    | GCC, LLVM Clang, Microsoft Visual C++,          |
|                    | Intel C++ Compiler, IBM XL C++, EDG             |
+--------------------+-------------------------------------------------+
|Influenciado por    | Ada, ALGOL 68, BCPL, C, CLU, ML, Mesa,          |
|                    | Modula-2,[1] Simula, Smalltalk                  |
+--------------------+-------------------------------------------------+
|Influyo             | Ada 95, C#, C99, Chapel, Clojure, D, Java, JS++,|
|                    | Lua, Nim, Objective-C++, Perl, PHP, Python,     |
|                    | **Rust**, Seed7, **Carbon**                     |
+--------------------+-------------------------------------------------+
|Sistemas Operativos | Multi plataforma                                |
+--------------------+-------------------------------------------------+

----

:id: ngrest

NGREST
######

`ngrest <https://github.com/loentar/ngrest>`_ es un framework REST en C++. Es pequeño,
rápido y **muy fácil de usar**.

----

.. image:: Imágenes/InstallNGRest.png
   :width: 110%

----

.. image:: Imágenes/CreateProject.png
   :width: 110%

----

.. image:: Imágenes/RunNGRest.png
   :width: 80%

----

.. image:: Imágenes/DescriptionForTheService.png
   :width: 100%

----

.. image:: Imágenes/EchoTest.png
   :width: 90%

----

.. image:: Imágenes/EchoTesting.png
   :width: 80%

----

.. image:: Imágenes/Timing.png
   :width: 115%

----

.. code:: c++

  #include <ngrest/common/Service.h>

  class myproject: public ngrest::Service
  {
  public:
    std::string echo(const std::string& text);
  };

----

.. code:: c++

   #include "myproject.h"

   std::string myproject::echo(const std::string& text)
   {
       return "Hi, " + text;
   }

----

.. code:: c++

    // *method: POST
    // *location: echo
    std::string echoPost(const std::string& text);

    //! a simple operation "echo"
    /*!
      example of GET request:
      http://server:port/ngrest/examples/Echo?text=Hello%20World!
    */
    // *method: GET
    // *location: echo?text={text}
    std::string echoGet(const std::string& text);
 };

 }}

----

`Ngrest-db <https://github.com/loentar/ngrest-db>`_
###################################################

Es un ORM pequeño y fácil de usar, para trabajar junto con ngrest.

- Mapea la estructura proporcionada por el desarrollador de las tablas
  de base de datos.
- Sintaxis fácil e intuitiva para realizar las operaciones db más utilizadas.

----

- Generador de código para máxima comodidad y velocidad de desarrollo
- Utiliza meta-comentarios para proporcionar funcionalidad adicional específica de la base de datos (PK, FK, UNIQUE, etc.) (**Como las anotaciones en Hibernate**)
- Fácil de integrar con los servicios ngrest

----

**Ventajas**:

- meta-comentarios para proporcionar funcionalidad adicional y específica
  de la base de datos (PK, FK, ÚNICO, etc.)
- fácil de integrar con los servicios de ngrest

----

DBMS soportados:

- SQLite3
- MySQL
- PostgreSQL

----

.. code:: c++

 #include <ngrest/common/Nullable.h>

 // *table: users
 struct User
 {
    // *pk: true
    // *autoincrement: true
    int id;

    std::string name;

    // *unique: true
    // *type: varchar(64)
    std::string email;

    // *type: timestamp
    // *default: CURRENT_TIMESTAMP
    // *ignoreOnInsert: true
    std::string registered;
 };

----

:id: fin

Fin
#######

¡¡¡ Gracias !!!
^^^^^^^^^^^^^^^

:id: fin

----

:data-z: r800
:data-y: r1600
:data-x: r1600

Fravia+
#######

.. image:: Imágenes/Fravia.jpg
   :width: 45%

Francesco Vianello (30 de agosto de 1952 - 3 de mayo de 2009), más conocido por
su apodo Fravia+, fue un ingeniero inverso de software y «seeker» conocido por
su archivo web de las técnicas y trabajos sobre **ingeniería inversa**.

----

Edward Snowden
##############

.. image:: Imágenes/Edward_Snowden.jpg
   :width: 40%

Edward Joseph Snowden (Elizabeth City, 21 de junio de 1983) es un consultor
tecnológico estadounidense, informante, antiguo empleado de la CIA (Agencia
Central de Inteligencia) y de la NSA (Agencia de Seguridad Nacional).

En junio del 2013, Snowden hizo públicos, a través de los periódicos The
Guardian y The Washington Post, documentos clasificados como alto secreto
sobre varios programas de la NSA, incluyendo los programas de vigilancia
masiva PRISM y XKeyscore

----

Aaron Swartz
############

.. image:: Imágenes/Aaron_Swartz_profile.jpg
   :width: 25%

Aaron Hillel Swartz (8 de noviembre de 1986, Chicago - 11 de enero de 2013, Nueva
York) fue un programador, emprendedor, escritor, activista político y hacktivista
de Internet. Estuvo involucrado en el desarrollo del formato de fuente web RSS, y
el formato de publicación Markdown, la organización Creative Commons, la
infraestructura del sitio web "web.py" y el sitio web de marcadores sociales
Reddit, del cual se convirtió en socio luego de que éste se fusionara con su
compañía, Infogami. Recibió atención de los medios después de la **recolección de
artículos de revistas académicas JSTOR.**

Fue diseñador jefe del proyecto inicial de Open Library.

----

Alexandra Elbakyan
##################

.. image:: Imágenes/Alexandra_Elbakyan_(cropped).jpg
   :width: 50%

Alexandra Asanovna Elbakyan (1988) es una desarrolladora de software y
neurocientífica de Kazajistán, más conocida por ser la fundadora del proyecto
**Sci-Hub** en 2011 una web de acceso libre a más de 40 millones de artículos
científicos recientes.

----

Donald Knuth
############

.. image:: Imágenes/Donald_Ervin_Knuth_(cropped).jpg
   :width: 45%

Donald Ervin Knuth (Milwaukee, Wisconsin; 10 de enero 1938) es un reconocido experto en ciencias de la computación estadounidense y matemático, famoso por su fructífera investigación dentro del análisis de algoritmos y compiladores.

----

Pablo Azero
###########

.. image:: Imágenes/pabloAzero.jpg
    :width: 45%

30 años en docencia universitaria de pregrado y posgrado en informática e ingeniería de software y 20 años en la industria del software.

"Improving type-error messages in functional languages"
Bastiaan Heeren, Johan Jeuring, Doaitse Swierstra,
Pablo Azero Alcocer

----

¡¡¡ Gracias !!!
^^^^^^^^^^^^^^^
