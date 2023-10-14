# Ruta de Navegación Java-Prolog con Interfaz de Botones

Este proyecto integra Java y Prolog para visualizar rutas entre diferentes puntos en un mapa. A través de una interfaz gráfica basada en botones, se permite visualizar el camino desde un origen a un destino determinados.

## Características principales:

1. **Mapeo de Puntos en Java**: 
   - Hay botones numerados del 1 al N.
   - Cada establecimiento e intersección en el mapa tiene un botón asociado.
   - Estos botones inicialmente están ocultos.

2. **Establecimientos en el Mapa**:
   - Los tipos de establecimientos incluyen: parques, escuelas, hospitales, centros comerciales y gasolineras.

3. **Integración con Prolog**:
   - Al determinar una ruta en Prolog, se retorna un arreglo con los nombres de los establecimientos o números de intersección.
   - Este arreglo se pasa a Java, que se encarga de hacer visible el botón correspondiente en la interfaz para cada elemento del arreglo.

## Ejemplo de Uso:

**Origen**: `centro_comercial_portal_plaza`  
**Destino**: `plaza_el_carmen`  
**Ruta Generada**: [centro_comercial_portal_plaza, 5, 39, 7, 1, tessa, policlinica_casa_de_la_salud, policlinico_magisterial_de_santatecla, 11, 17, 40, escuela_de_comunicacion_monica_herrera, escuela_santa_cecilia, colegio_belen, plaza_el_cafetalon, 44, centro_comercial_las_aguilas, 42, plaza_el_carmen]


En la ruta generada, cada nombre o número corresponde a un botón en la interfaz de Java. Al recibir este arreglo, los botones correspondientes se vuelven visibles, mostrando así la ruta en el mapa.


