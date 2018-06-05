# <h1  style="text-align: center;">Museo Virtual Casa de Moneda<h1>

## Proyecto

Ingrese y visualice el [Museo Virtual Casa de Moneda](http://35.231.78.88:3000/coins/museum)

## Integrantes

| Integrante                       | GitHub Nick     |
|----------------------------------|-----------------|
| Laura Paola Cerón Martínez       | lpceronm        |
| Camilo Andrés Dajer Piñerez      | trum7           |
| Sebastian David Moreno Bernal    | sdmorenob       |
| Cristian Camilo Orjuela Velandia | CristianOrjuela |

## Descripción

El Museo Casa de Moneda de Bogotá fue el lugar donde se fabricaron las primeras monedas de oro en América Latina en el año de 1621. Allí se guarda la colección numística del Banco de La República de Colombia con más de 1700 piezas especialmente monetarias, que han circulado por el territorio Colombiano desde comienzos del siglo XVII.  
El [Museo Virtual](http://35.231.78.88:3000/coins/museum) nace con el propósito de brindar la oportunidad a los interesados de realizar un tour por las salas de exposición diseñadas. Allí se encontrarán los ejemplares (actualmente de prueba) y la información relacionada, tal como se haría en el Museo pero de manera virtual. Adicionalmente, el usuario podrá hacer uso de un servicio para cargar información sobre las piezas de manera anónima.


Para disfrutar visualizar el museo virtual, haga clic [aquí](http://35.231.78.88:3000/coins/museum).


## Objetivos

1. <p style="text-align: justify;">Diseñar un Museo Virtual que mediante un navegador web permita realiazar un tour por un escenario asemejado al Museo Casa de Moneda de Bogotá de manera interactiva.</p>
2. <p style="text-align: justify;">Implementar los conocimientos adquiridos durante el curso de Computación Visual de la Universidad Nacional de Colombia en la creación de un Museo Virtual.</p>
3. <p style="text-align: justify;">Implementar shaders que permitan filtrar los nodos de la escena y una correcta visualización de los elementos.</p>

## Descripción del Desarrollo

El proyecto fue realizado empleando el Framework Ruby on Rails, el cual se encuentra configurado en un sistema de contenedores llamado Docker. A nivel gráfico se realizó la implementación con ERB que es un archivo compilado del Framework a HTML y JavaScript con la ayuda de la librería Three.js.  
Para la creación del escenario se hizo uso de la herramienta [Claro.io](https://clara.io/) que permite la animación y el renderizado de modelos 3D. El modelo resultante fue [coinMuseum](https://clara.io/view/30ad21c2-23fe-497c-92cf-6745f9c7a914/), el cual se describe mediante un archivo de tipo JSON y que gracias a una de las funcionales de la librería se puede exportar como modelo y trabajar en él. Adicionalmente para la implementación se usó [este](https://blog.cogapp.com/how-to-create-a-virtual-3d-gallery-using-iiif-and-three-js-ad6766e45d3f/) artículo.  
Basados en un ejemplo de [controls/pointerlock](https://threejs.org/examples/?q=pointer#misc_controls_pointerlock/) se desarrolló el proyecto en el ámbito interactivo para el movimiento del observador y para la selección y visualización de la moneda fue necesario implementar el algoritmo [Raycaster](https://threejs.org/docs/index.html#api/core/Raycaster). Por último se realizó la implementación de filtros para el escenario mediante shaders que permitieran configurar la vista del Museo basados en el ejemplo de [Webgl Shaders Tonemapping](https://threejs.org/examples/webgl_shaders_tonemapping). Estos conceptos serán ampliados en [Discusión](#discusión).


## Discusión

<p style="text-align: justify;">
Mediante el uso de la librería anteriormente mencionada, se logró crear una aplicación que permitiera al usuario realizar un tour por un Museo Virtual, la cual se llevó a cabo gracias a la aplicación de los siguientes conceptos.
</p>

### Interacción

#### Navegación

<p style="text-align: justify;">
El usuario puede recorrer el escenario en primera persona de forma libre y autónoma a través de la galería diseñada, donde se puede visualizar los distintos artefactos expuestos en los muros del Museo Virtual.
</p>

#### Manipulación.

El usuario puede desplazarse hacia adelante o atrás, derecha o izquierda del escenario mediante el uso de las flechas. También a través del uso del mouse, puede rotar el ángulo de visión de forma vertical o de forma horizontal. Adicionalmente se puede realizar un desplazamiento vertical oprimiento la tecla espacio lo suma un total de 5 de los 6 grados de libertad existentes en el modelo de interacción 3D.  
Adicionalmente puede modificar los distintos [filtros](#ambientación-del-museo) del escenario con los números. Los impares disminuyen y los pares aumentan el coeficiente de uso del filtro desarrollado. También es posible cerrar el cuado de información de la Moneda mediante la tecla c.

#### Diseño de Frames

##### Nodos:
<p style="text-align: justify;">
Las monedas y los Muros.
</p>

##### Agentes:
- <p style="text-align: justify;"> Teclado: Mediante las flechas permiten el desplazamiento espacial en la dirección que señala la flecha y la barra espaciadora permite realizar un desplazamiento en sentido horizontal.</p>
- <p style="text-align: justify;"> El mouse: El movimiento de este permite rotar el ángulo de visión de la camara, de forma horizontal y vertical, y el clic izquierdo permite seleccionar el nodo (Moneda) de la cual se desea poseer información.</p>

### Shaders
<p style="text-align: justify;">
Para el proyecto, existen tres situaciones principales en la cual se hace uso de shaders. El primero es para identificar la moneda que fue seleccionada y el segundo para poder abstraer el borde de la moneda y el tercero para ambientar el Museo.
</p>

#### Identificar la moneda
<p style="text-align: justify;">
Dado que el Museo posee en ambos costados de los muros ubicados objetos, se realiza la diferenciación del objeto seleccionado mediante el uso de filtros de sombra, el cual varía dependiendo la distancia del observador a dicho objeto. De esta forma es posible realizar la selección de la moneda sin interferencia entre objetos.
</p>

#### Identificar los bordes de la moneda
<p style="text-align: justify;">
Una vez se desea detallar la información de una moneda mediante el clic izquierdo del mouse, se aplica un shader de tal forma que se reconozca el borde de la moneda y así, se poder visualizar con más detalle la imagen. Sin embargo, debido a la irregularidad de las monedas se toma un espacio adicional del macro para evitar recortes y pérdidas de la imagen.
</p>

#### Ambientación del Museo

<p style="text-align: justify;">
El usuario puede seleccionar su ambiente ideal para su tour virtual. Para ello se aplicaron 4 filtros que permiten cambiar los shaders generales de la escena y ajustar al gusto del usuario:
</p>

- bloomAmount: Cambia el rubor general de la escena, especialmente de los objetos.
- SunLight: Varía la cantidad de luz solar presente en el museo durante el recorrido.
- middleGrey: Varía la escala de grises de la escena.
- maxLuminance: Modifica la luminancia presente en el Museo, variando principalmente el brillo de los objetos.

## Trabajo Futuro

Lo principal es adelantar el trabajo para obtener las imágenes de las piezas originales, debido a que actualmente se usan fotos de prueba. También se requiere realizar el filtro de información, para que el usuario pueda diseñar su recorrido con los criterios seleccionados. Adicionalmente se posee como objetivo futuro adecuar un shader que permita visualizar la moneda como modelo 3D. Se requiere asimismo conocer de primera mano los requisitos de parte del Banco de la República de Colombia, quien es el stakeholder del proyecto.

## Referencias

- [How to create a virtual 3D gallery using IIIF and Three.js.](https://blog.cogapp.com/how-to-create-a-virtual-3d-gallery-using-iiif-and-three-js-ad6766e45d3f)
- [Export To Three.js.](https://clara.io/learn/user-guide/data_exchange/threejs_export)
- [Loader JSON Claro.io.](https://threejs.org/examples/?q=cla#webgl_loader_json_claraio)
- [Controls/pointerlock.](https://threejs.org/examples/?q=pointer#misc_controls_pointerlock)
- [Raycaster.](https://threejs.org/docs/index.html#api/core/Raycaster)
- [Filters And Shaders.](https://threejs.org/examples/#webgl_interactive_cubes)
- [Filters and Tones Shaders](https://threejs.org/examples/webgl_shaders_tonemapping)
- [DOF's](https://en.wikipedia.org/wiki/Degrees_of_freedom_(mechanics))
- [A Survey of Interaction Techniques for Interactive 3D Environments](https://hal.inria.fr/hal-00789413/document)
- [Shader](https://en.wikipedia.org/wiki/Shader)
