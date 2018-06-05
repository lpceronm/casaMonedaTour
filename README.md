# <h1  style="text-align: center;">Museo Virtual Casa de Moneda<h1>

## Integrantes

| Integrante                       | GitHub Nick     |
|----------------------------------|-----------------|
| Laura Paola Cerón Martínez       | lpceronm        |
| Camilo Andrés Dajer Piñerez      | cadajerp        |
| Sebastian David Moreno Bernal    | sdmorenob       |
| Cristian Camilo Orjuela Velandia | CristianOrjuela |

## Descripción

<p style="text-align: justify;">
El Museo Casa de Moneda de Bogotá fue el lugar donde se fabricaron las primeras monedas de oro en América Latina en el año de 1621. Allí se guarda la colección numística del Banco de La República de Colombia con más de 1700 piezas especialmente monetarias, que han circulado por el territorio Colombiano desde comienzos del siglo XVII.  
El Museo Virtual nace con el propósito de brindar la oportunidad a los interesados de realizar un tour por las salas de exposición diseñadas. Allí se encontrarán los ejemplares (actualmente de prueba) y la información relacionada, tal como se haría en el Museo. Adicionalmente, el usuario podrá hacer uso de un servicio para aportar información sobre las piezas de manera anónima.
</p>

<<giff\>>

## Objetivos

1. <p style="text-align: justify;">Diseñar un Museo Virtual que mediante un navegador web permita realiazar un tour por un escenario asemejado al Museo Casa de Moneda de Bogotá de manera interactiva.</p>
2. <p style="text-align: justify;">Implementar los conocimientos adquiridos durante el curso de Computación Visual de la Universidad Nacional de Colombia en la creación de un Museo Virtual.</p>
3. <p style="text-align: justify;">Implementar filtros de información para facilitar al usuario el diseño del recorrido personalizado.</p>

## Descripción del Desarrollo

<p style="text-align: justify;">
El proyecto fue realizado empleando el Framework Ruby on Rails, el cual se encuentra configurado en un sistema de contenedores llamado Docker. A nivel gráfico se realizó la implementación con ERB que es un archivo compilado del Framework a HTML y JavaScript con la ayuda de la librería Three.js.  
Para la creación del escenario se hizo uso de la herramienta [Claro.io](https://clara.io/) que permite la animación y el renderizado de modelos 3D. El modelo resultante fue [coinMuseum](https://clara.io/view/30ad21c2-23fe-497c-92cf-6745f9c7a914), el cual se describe mediante un archivo de tipo JSON y que gracias a una de las funcionales de la librería se puede exportar como modelo y trabajar en él. Adicionalmente para la implementación se usó [este](https://blog.cogapp.com/how-to-create-a-virtual-3d-gallery-using-iiif-and-three-js-ad6766e45d3f) artículo.  
Basados en un ejemplo de [controls/pointerlock](https://threejs.org/examples/?q=pointer#misc_controls_pointerlock) se desarrolló el proyecto en el ámbito interactivo para el movimiento del observador y para la selección y visualización de la moneda fue necesario implementar el algoritmo [Raycaster](https://threejs.org/docs/index.html#api/core/Raycaster). Estos conceptos serán ampliados en la sección [Discusión](<a href="#discusion"></a>).
</p>


## <div id="discusion">Discusión</div>

<p style="text-align: justify;">
Mediante el uso de la librería anteriormente mencionada, se logró crear una aplicación que permitiera al usuario realizar un tour por un Museo Virtual, la cual se llevó a cabo gracias a la aplicación de los siguientes conceptos.
</p>

### Interacción

#### Navegación

<p style="text-align: justify;">
El usuario puede recorrer el escenario en primera persona de forma libre y autónoma a través de la galería diseñada, donde se puede visualizar los distintos artefactos expuestos en los muros del Museo Virtual.
</p>

#### Manipulation.

<p style="text-align: justify;">
El usuario puede desplazarse hacia adelante o atrás, derecha o izquierda del escenario mediante el uso de las flechas. También a través del uso del mouse, puede rotar el ángulo de visión de forma vertical o de forma horizontal. Adicionalmente se puede realizar un desplazamiento vertical oprimiento la tecla espacio lo suma un total de 5 de los 6 grados de libertad existentes en el modelo de interacción 3D.
</p>

#### Diseño de Frames

##### Nodos:
<p style="text-align: justify;">
Las monedas y los Muros.
</p>

##### Agentes:
- <p style="text-align: justify;"> Teclado: Mediante las flechas permiten el desplazamiento espacial en la dirección que señala la flecha y la barra espaciadora permite realizar un desplazamiento en sentido horizontal.</p>
- <p style="text-align: justify;"> El mouse: El movimiento de este permite rotar el ángulo de visión de la camara, de forma horizontal y vertical, y el click izquierdo permite seleccionar el nodo (Moneda) de la cual se desea poseer información.</p>

### Shaders



---
![alt](./imagenes/edgevertex.jpg)
![alt text](./imagenes/gif1.gif)
---

## Referencias

- [How to create a virtual 3D gallery using IIIF and Three.js.](https://blog.cogapp.com/how-to-create-a-virtual-3d-gallery-using-iiif-and-three-js-ad6766e45d3f)
- [Export To Three.js.](https://clara.io/learn/user-guide/data_exchange/threejs_export)
- [Loader JSON Claro.io.](https://threejs.org/examples/?q=cla#webgl_loader_json_claraio)
- [Controls/pointerlock.](https://threejs.org/examples/?q=pointer#misc_controls_pointerlock)
- [Raycaster.](https://threejs.org/docs/index.html#api/core/Raycaster)
- [Filters And Shaders.](https://threejs.org/examples/#webgl_interactive_cubes)
- [Filters and Tones Shaders](https://threejs.org/examples/webgl_shaders_tonemapping)
- [DOF's](https://en.wikipedia.org/wiki/Degrees_of_freedom_(mechanics)
- [A Survey of Interaction Techniques for Interactive 3D Environments](https://hal.inria.fr/hal-00789413/document)
