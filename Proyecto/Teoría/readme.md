# Introducción
Antes de tratar con las técnicas más comunes de Representación del Conocimiento en el campo de la Inteligencia Artificial, demos una pequeña explicación de que la representación del conocimiento.

Según el artículo “What is a Knowledge Representation”, una representación del conocimiento puede tener 5 roles:

1º. Es aquello que sustituye al objeto en sí, usándolo como una entidad para determinar las consecuencias mediante el pensamiento y no mediante la actuación, es decir, razonando sobre el mundo en lugar de actuando.

2º. Es un conjunto de premisas ontológicas, es decir, respuestas a preguntas.

3º. Es una teoría fragmentada de un razonamiento inteligente expresado en termino de 3 componente: la representación del concepto fundamental del razonamiento inteligente, un conjunto de inferencia que permite la representación y un conjunto de referencias que ésta recomienda.

4º. Es un medio para la computación del entorno, en el que pensar es el objetivo.

5º. Es un medio de expresión humana, es decir, como decimos las cosas sobre el mundo.

Una vez terminado los posibles roles, pasemos a las técnicas más comunes usadas en Inteligencia Artificial.

# Redes Semánticas

Las redes IS-AS son el tipo de red semántica mas común, aunque los enlaces que crean estas redes también estén presentes en grafos conceptuales y marcos.

Presenta una jerarquía taxonómica constituida por sistemas de enlaces de herencia. Estas redes son el resultado de la agrupación que hace el ser humano a los objetos. Por ejemplo:
![ ](https://lh3.googleusercontent.com/mKB56NuNgGGLIV-fi79-4ySsgHPPo9Y6pbaqOnXxrQcPW1P0NXP2d3cNw2ix1DilsjElzcG95ziS0PG-Viq02aibWrW-_TuWT6-J6wrFXiyLA9F19LeBGWOmIcP9msDssHP_BLj54MWup8riRy0hYFDdEsVh2f9kU8wPURUVS4DZjiR0q25xBmmRo_TPWsbQEslo5K9Te81e94SMi-kL1lLW6Z8oOMmvUu3IcIYjtpE3KNXaEETWs-lPFkR1eJdcPUL46YnnvLhUQumqpZ06p33jt-ENqtnw8HjsGC1GNaLFWbPtxF3d0BGWlka7VSTslOSecg65axUKRblhObo-VQccPhaXlLxLVrNB7zVY7TM440KztBr9yWB8CvXF5oEQjlU6YRBqlAssBsI-9KD3Z8NhyCzapm-sMvmNX-vpBR6vYH4kqiJf0H6pupJ-4mRlTBSXcYsfB9dawO4rRfGcYIhSxDT1s10THBI52cLP_1qPqm_8o2TKFvkI2dNuKnzJhgnEylfaIodslRM7zcHDE7iMwclz_ECs4Js9sHxINMLlgCbw01DR6iq5o0wAsSs1_YqbvxKlq7UekLavhItOfD3nF0laGdeMwrSXpc1lFMVpanz0-j0UlXd7SB6cuhonD7Auz-0x8MSMGpypimTO7vaADEM6uAlIKNWkufvlxQPAjjeMn6d69otMNVcxeQ=w844-h435-no?authuser=0)


En la jerarquía, los nodos más bajos suelen representar individuos concretos, mientras que los de orden superior denotan clases de individuos.

## Ventajas

 - Las redes IS-AS son muy flexibles.
 - Representan el conocimiento de forma muy sencilla y entendible.

## Desventajas

 - Una vez construida la red, es muy difícil de modificar.
 - Es muy difícil representar nodos intencionales tipo: “Pedro cree que Ana esta borracha”.
 - Hay dificultad a la hora de expresar cuantificación. Ejemplo: “Algunos seres marinos son mamíferos”

# Marcos o Frames

Fueron propuestos por Minsky en 1975 con la siguiente idea original:

"Un Frame es una estructura de datos para representar una situación estereotipada... Podemos pensar en un Frame como una red de nodos y relaciones. Los 'niveles superiores' de un Frame son fijos y representan cosas que son siempre ciertas en la situación supuesta. Los niveles inferiores tienen muchos terminales - 'slots' que tienen que llenarse con instancias o datos específicos... Las suposiciones por defecto son asociadas débilmente con sus terminales, de forma tal que ellas puedan ser fácilmente removidas ante nuevos elementos que se ajusten mejor a la situación actual."

Podemos resumir esto en que un marco es una estructura de datos compleja compuesta por casillas, que referencian al objeto correspondiente al marco. Por ejemplo:
![ ](https://photos.app.goo.gl/CY76EWk7jSNiVsff9)

## Ventajas

 - Los objetos, las relaciones entre ellos y sus propiedades son descritos de forma precisa.
 - Los marcos pueden tener incluidos procedimientos en su interior y que se ejecuten de forma automática al cambiar algún valor.
 - La base del conocimiento está bien modularizada.

## Desventajas

 - Excepciones en los prototipos.
 - Adaptación del sistema a nuevas situaciones.
 - Uso de conocimiento heurístico.

# Ontologías

Esta técnica es relativamente reciente y ha surgido debido al auge de la web semántica en confluencia con la inteligencia artificial y las tecnologías web.  El termino de ontología empleado en este ámbito no hace referencia a su definición (“rama de la metafísica que estudia la naturaleza de la existencia”), sino a una entidad computacional, a un recurso artificial que se crea.

Una definición más concreta de ontología en este ámbito, dado por Wigand en 1997 es:

“Base de datos donde se describen conceptos del mundo o algún dominio en específico, sus propiedades y como se relacionan los conceptos entre sí.”

Para la situación de este documento, al hablar de ontologías, debemos especificar a qué tipo de sistemas nos referimos. Según Gómez-Pérez (2004), los componentes de una ontología son:

 - Clases: representan las ideas a formalizar y los conceptos en el sentido más amplio. Suelen organizarse en taxonomías con posibilidad de usar herencia.
 - Relaciones: representan las relaciones entre las clases. Suelen ser binarias.
 - Funciones: son relaciones especiales donde se identifican elementos mediante cálculo de una función.
 - Instancias: representan elementos o individuos.
 - Axiomas: representan las sentencias que siempre son ciertas.

## Ventajas

 - Empleo simultaneo de múltiples bases de datos, con características muy diferentes.
 - Utilizar datos obtenidos de la propia ontología sin tener que renunciar a la base de datos inicial.

## Desventajas

 - Imposibilidad de utilizar ontologías previamente desarrolladas sin ningún tipo de tratamiento.
 - Para sacar el máximo provecho es necesario el desarrollo de buscadores semánticos, sin embargo, estos necesitan algoritmos complejos que echa mano de herramientas de procesamiento de lenguaje natural (poco desarrollados).

Sitios de interés donde encontrar ontologías: [IEEE Standard Upper Ontology](http://grouper.ieee.org/groups/) y [Cyc](https://www.cyc.com/).

# Bibliografía

_What Is a Knowledge Representation_ por Randall Davis, Howard Shrobe, and Peter Szolovits: [https://www.aaai.org/ojs/index.php/aimagazine/article/view/1029](https://www.aaai.org/ojs/index.php/aimagazine/article/view/1029)

_Las ontologías en la representación del conocimiento_: [https://www.researchgate.net/profile/Alfredo_Simon-Cuevas/publication/321397690_Las_ontologias_en_la_representacion_del_conocimiento/links/5a2079180f7e9b4d1927e80a/Las-ontologias-en-la-representacion-del-conocimiento.pdf](https://www.researchgate.net/profile/Alfredo_Simon-Cuevas/publication/321397690_Las_ontologias_en_la_representacion_del_conocimiento/links/5a2079180f7e9b4d1927e80a/Las-ontologias-en-la-representacion-del-conocimiento.pdf)

Desventajas de los marcos: [https://www.cs.us.es/cursos/ia2-2003/temas/tema-03.pdf](https://www.cs.us.es/cursos/ia2-2003/temas/tema-03.pdf)

Ventajas y desventajas de las ontologías: [https://www.researchgate.net/publication/28808291_Ontologias_ontologias_y_recuperacion_de_informacion](https://www.researchgate.net/publication/28808291_Ontologias_ontologias_y_recuperacion_de_informacion)
