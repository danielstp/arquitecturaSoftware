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

:id: titulo

########################
Arquitectura de Software
########################

----

Arquitectura vs Diseño
----------------------

    * Definición de arquitectura: estructura, decisiones arquitectónicas, atributos (“‑ilities”).
    * Diseño de software: implementación detallada (algoritmos, estructuras de datos).
    * Línea divisoria: ¿“cuándo termina la arquitectura y comienza el diseño”?

----

Diagrama ER como herramienta para entender sistemas
---------------------------------------------------

    * ¿Qué hace un sistema?: identificar entidades, relaciones y cardinalidades.
    * Ejemplo: diagrama ER de caso real (esquema de base de datos).
    * Interpretación: cómo leer qué hace el sistema desde un ER.


----

UML – Diagrama de clases a partir del ER
----------------------------------------

    * Elementos de UML: clases, atributos, métodos, asociaciones.
    * Migración: de entidades ER a clases UML.
    * Ejemplo visual y explicativo.


----

ISO/IEC 42010 – Vistas, puntos de vista, stakeholders
-----------------------------------------------------

    * Introducción al estándar :contentReference[oaicite:1]{index=1}.
    * Stakeholders y preocupaciones; correspondencia entre vistas y puntos de vista.
    * Ejemplo: vistas del sistema (lógica, datos, implementación, despliegue).


----

Decisiones arquitectónicas clave: licencia, BD, lenguaje, frameworks
--------------------------------------------------------------------

    * Selección de licencia: open-source (MIT, GPL...), implicaciones.
    * Tipo de BD: SQL vs NoSQL, consistencia, escalabilidad.
    * Lenguaje y frameworks: ejemplos y criterios de elección.
    * Buenas practicas, herramientas de análisis estático y dinámico de código.
    * ¿Dónde encajan estas decisiones? En la **arquitectura** (capas macro).


----

Buenas prácticas + “Zen de Python”
----------------------------------

    * Principios: legibilidad, simplicidad, claridad.
    * CI/CD, testing, seguridad, code style.
    * ¿Arquitectura o diseño? Apoyan ambas, pero con impacto arquitectónico si afectan estructura macro.

----

Zen de Python 0
---------------

- Beautiful is better than ugly.
- Explicit is better than implicit.
- Simple is better than complex.
- Complex is better than complicated.

----

Zen de Python 1
---------------

- Flat is better than nested.
- Sparse is better than dense.
- Readability counts.
- Special cases aren't special enough to break the rules.

----

Zen de Python 2
---------------

- Although practicality beats purity.
- Errors should never pass silently.
- Unless explicitly silenced.
- In the face of ambiguity, refuse the temptation to guess.

----

Zen de Python 3
---------------

- There should be one-- and preferably only one --obvious way to do it.[c]
- Although that way may not be obvious at first unless you're Dutch.
- Now is better than never.
- Although never is often better than right now.[d]

----

Zen de Python 4
---------------

- If the implementation is hard to explain, it's a bad idea.
- If the implementation is easy to explain, it may be a good idea.
- Namespaces are one honking great idea – let's do more of those!

----

Documentación como código y autogenerada
----------------------------------------

    * Herramientas: Sphinx, Swagger/OpenAPI, PlantUML.
    * Ejemplos: embed UML, generar APIs, pipeline CI/CD con documentación integrada.

----

Patrones – Creacionales
-----------------------

    * **Factory Method**  
    * **Abstract Factory**  
    * **Builder**  
    * **Singleton**  

----

Patrones – Estructurales
------------------------

    * **Adapter**
    * **Facade**
    * **Decorator**

----

Patrones – Comportamiento
-------------------------

    * **Chain of Responsibility**
    * **Observer**
    * **Template Method**


----

Cohesión arquitectónica de los patrones
---------------------------------------

    * ¿Qué impactan la estructura global?
    * ¿Cuál pertenece solo al diseño?
    * Ejemplo en capas, microservicios o hexagonal.

----

Comparativa: arquitectura vs diseño
-----------------------------------

    * Impacto en modularidad, rendimiento, evolución.
    * Casos: cambiar licencia o BD vs cambiar algoritmo interno.
    * ¿Qué requiere aprobación del arquitecto y revisión de stakeholders?

----

Referencias y estándares
------------------------

    * ISO/IEC 42010 :contentReference[oaicite:2]{index=2}
    * IEEE 1471 como base :contentReference[oaicite:3]{index=3}
    * Modelos (C4, hexagonal, microservicios) :contentReference[oaicite:4]{index=4}
    * Patrones arquitectónicos y estructura :contentReference[oaicite:5]{index=5}

----

Capítulo 1
----------

**Definiendo la Arquitectura de Software** - Este capítulo
fundamental sienta las bases para comprender la importancia de la
arquitectura de software. Explicamos por qué es tan crucial para el
proceso general de desarrollo, examinamos los diferentes atributos
de alto nivel que importan en el diseño, y explicamos brevemente las
consecuencias de una arquitectura deficiente para destacar su
importancia.

----

Capítulo 2
----------

**El Rol de un Arquitecto de Software** - En este capítulo
profundizamos en el rol multifacético del arquitecto de software,
describiendo responsabilidades y expectativas clave. Exploramos la
relación crucial entre arquitectos y equipos de desarrollo,
enfatizando comunicación y colaboración efectivas para resultados
exitosos. También examinamos cómo alinear decisiones técnicas con
objetivos empresariales generales.

----

Capítulo 3
----------

**Propiedades Arquitectónicas** - Examina las diferentes
propiedades que forman la base de un buen diseño arquitectónico,
representando todo lo que los arquitectos deben considerar para
diseñar aplicaciones efectivas que cumplan con necesidades de
rendimiento, mantenibilidad y resiliencia a largo plazo.

----

Capítulo 4
----------

**La Importancia de la Modularidad** - Antes de examinar estilos y
patrones arquitectónicos, exploramos la modularidad en el diseño de
software y su importancia. Cubrimos principios para construir
modularidad en todos los aspectos del diseño, asegurando que cada
módulo tenga responsabilidades bien definidas e interactúe a través
de interfaces claras.

----

Capítulo 5
----------

**Estilos Arquitectónicos** - Explica qué constituye un estilo
arquitectónico versus patrones. Para cada estilo, desglosamos su
funcionamiento, beneficios y tipos de aplicaciones donde es más
adecuado.

----

Capítulo 6
----------

**Patrones Arquitectónicos** - Profundiza en diferentes patrones
arquitectónicos, sus características y aplicaciones. Con ejemplos
prácticos, ilustra el proceso de decisión al elegir patrones,
considerando pros, contras y situaciones óptimas de aplicación.

----

Capítulo 7
----------

**Arquitectura de Componentes** - Tras patrones arquitectónicos,
examinamos componentes de software y su papel en la arquitectura a
menor escala. Cubre identificación de componentes, descomposición
modular, y conceptos de acoplamiento y cohesión que impactan el
diseño del sistema.

----

Capítulo 8
----------

**Arquitectura para Rendimiento** - Proporciona un examen
detallado de cómo evaluar patrones de software para rendimiento y
diseñar componentes para operación óptima. Incluye metodologías para
medir rendimiento de código, herramientas y técnicas para evaluar
eficiencia e identificar cuellos de botella.

----

Capítulo 9
----------

**Arquitectura para Seguridad** - Destaca la importancia crucial
de seguridad en arquitectura de software. Explora patrones de diseño
seguros para integrar protección en la arquitectura, y enfatiza
prácticas de codificación segura para crear código robusto y
resistente contra exploits maliciosos.

----

Capítulo 10
-----------

**Diseño y Presentación** - Examina principios de diseño que
crean sistemas de software robustos y escalables. Cubre bases del
pensamiento de diseño en arquitectura de software, alineando
decisiones tecnológicas con necesidades de usuarios y objetivos
empresariales. También explora mejores prácticas para la capa de
presentación, enfocándose en interfaces intuitivas y responsivas.

----

Capítulo 11
-----------

**Arquitectura Evolutiva** - Profundiza en principios de
Arquitectura Evolutiva, enfatizando flexibilidad y adaptabilidad.
Cubre por qué el cambio es necesario, estrategias arquitectónicas
para manejarlo, y cómo evolucionar diseños sin interrumpir
operaciones. También aborda gestión de deuda técnica e integración
continua para arquitecturas en evolución.

----

Capítulo 12
-----------

**Habilidades Blandas para Arquitectos de Software** - Dedica un
capítulo a habilidades blandas críticas que los arquitectos deben
dominar para liderar equipos y ejecutar estrategias exitosas.
Examina el rol de liderazgo del arquitecto y habilidades específicas
para cumplirlo efectivamente.

----

Capítulo 13
-----------

**Escribiendo Requerimientos Técnicos** - Cubre el aspecto
crítico de escribir requerimientos técnicos para arquitectos.
Enfatiza cómo definir claramente criterios funcionales, de
rendimiento y diseño para satisfacer necesidades de stakeholders
mientras se cumplen estándares y regulaciones.

----

Capítulo 14
-----------

**Prácticas de Desarrollo** - Discute prácticas de desarrollo en
la industria de software y su impacto en la entrega. Examina cómo
metodologías como Agile, DevOps y CI/CD influyen en decisiones
arquitectónicas, y proporciona estrategias para arquitectos en este
entorno dinámico.

----

Capítulo 15
-----------

**Arquitectura como Ingeniería** - Explora contribuciones de la
arquitectura al campo de la ingeniería de software. Cubre cómo la
arquitectura da forma a prácticas de ingeniería y asegura éxito en
proyectos complejos. También discute métricas para evaluar y mejorar
calidad de diseños.

----

Capítulo 16
-----------

**Pruebas en Arquitectura de Software** - Se enfoca en asegurar
testabilidad en arquitectura de software. Cubre pruebas unitarias
para componentes arquitectónicos y estrategias prácticas para
integrar testabilidad en la arquitectura, asegurando confiabilidad
y calidad del producto final.

----

Capítulo 17
-----------

**Tendencias Actuales y Futuras en Software** - Examina
tecnologías emergentes (blockchain, edge computing, AI/ML) y su
influencia en decisiones arquitectónicas. También cubre cómo
prepararse para cambios en la industria y adaptarse rápidamente.

----

Capítulo 18
-----------

**Sintetizando Principios Arquitectónicos** - Revisa temas
centrales del libro, enfatizando cómo decisiones arquitectónicas
impactan éxito de proyectos, negocios y satisfacción de usuarios.
Concluye con un llamado a la mejora continua y aprendizaje permanente
en un campo en rápida evolución.

----

:id: fin

Fin
#######

¡¡¡ Gracias !!!
^^^^^^^^^^^^^^^

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
