# Análisis de videojuego: *Fireboy and Watergirl*
Fireboy and Watergirl es un juego **cooperativo de puzles y plataformas** en el que ambos jugadores comparten el mismo dispositivo.

Fue desarrollado por Oslo Albet y su primer lanzamiento data de 2009, aunque su popularidad ha dado lugar a una serie de seis entregas, siendo la más reciente de 2021.

El juego destaca por su sencillez, jugabilidad adictiva y mecánica cooperativa, pilares que lo convirtieron en un clásico de los navegadores de la época.

En él, dos personajes con habilidades opuestas —uno de fuego y otro de agua— deben colaborar para superar niveles repletos de trampas, interruptores y puzles que requieren coordinación y sincronización entre los jugadores.

A pesar de su apariencia simple, brilla por su diseño de niveles inteligente, su ritmo ágil y la forma en que fomenta la comunicación y el trabajo en equipo.

<p align="center">
  <img width="677" height="85" alt="image" src="https://github.com/user-attachments/assets/d0965a6e-f06d-49e4-975e-e9441fd53958" />
  <br>
  <em>Figura 1. Portada del juego Fireboy and Watergirl.</em>
</p>

## Mecánicas principales
* Cada jugador controla a su personaje usando el mismo teclado:
    - **Fireboy:** con las flechas direccionales.  
    - **Watergirl:** con las teclas **WASD**.
* Ambos pueden moverse lateralmente y saltar.
* El objetivo de cada nivel es que ambos personajes lleguen a su respectiva puerta de salida.

<p align="center">
  <img width="250" height="122" alt="image" src="https://github.com/user-attachments/assets/df8fdec0-d99f-4d5c-bb7b-fabd6fded53d" />
  <br>
  <em>Figura 2. Puertas de salida de cada personaje.</em>
</p>
<br>


* Si uno de los dos jugadores muere se reinicia el nivel.
* *Fireboy* muere al tocar el agua y *Watergirl* muere al tocar el fuego. Ambos mueren si tocan el pantano.

<p align="center">
  <img width="250" height="152" alt="image" src="https://github.com/user-attachments/assets/9e3d02d2-99a5-4e92-9450-17520fb7e296" />
  <br>
  <em>Figura 3. Cada personaje tiene su debilidad elemental.</em>
</p>
<br>

* Para la complejidad del nivel se usan botones, palancas u objetos pesados móviles con los cuales interactuar para abrir o cerrar puertas, subir o bajar plataformas etc.

<p align="center">
  <img width="902" height="426" alt="image" src="https://github.com/user-attachments/assets/346e5636-c09b-4494-b042-711f1a9e9d10" />
  <br>
  <em>Figura 4. Botones y palancas como elementos de interacción.</em>
</p>
<br>

* Al completar un nivel puedes obtener hasta 3 estrellas:
    1. Completar el nivel.  
    2. Recolectar todos los diamantes.  
    3. Completar el nivel dentro de un tiempo establecido (no te dicen cuánto).

<p align="center">
  <img width="500" height="455" alt="image" src="https://github.com/user-attachments/assets/279b1c54-ef14-433a-b899-aa7e970fae3a" />
  <br>
  <em>Figura 5. Pantalla de resultados con el sistema de estrellas.</em>
</p>
<br>

## Interfaz de usuario
### MENÚ PRINCIPAL
Al abrir el juego aparece un menú principal con el título del juego y 3 botones:
* **Jugar**: Te lleva al árbol de niveles.  
* **Tutorial**: Te lleva a un nivel inicial a modo de tutorial que no pertenece al árbol.  
* **Ajustes**: Te lleva al menú de ajustes.

<p align="center">
  <img width="600" height="595" alt="image" src="https://github.com/user-attachments/assets/20589b3e-eafb-40f4-9641-724b453fedcc" />
  <br>
  <em>Figura 6. Menú principal del juego.</em>
</p>
<br>

### AJUSTES
Permite **activar o desactivar la música y los efectos de sonido**.

<p align="center">
  <img width="500" height="430" alt="image" src="https://github.com/user-attachments/assets/d175c08c-9ad8-4d06-a15b-d3a76929625a" />
  <br>
  <em>Figura 7. Menú de ajustes.</em>
</p>
<br>

### ÁRBOL DE NIVELES
Para acceder a los niveles aparece un árbol el cuál conecta todos estos. Cuando completas uno, se te desbloquean todos aquellos colindantes y puedes elegir en cualquier momento cuál de ellos jugar.

<p align="center">
  <img width="973" height="591" alt="image" src="https://github.com/user-attachments/assets/1d26b85f-adf0-46c7-8113-ee480c36d498" />
  <br>
  <em>Figura 8. Árbol de niveles del juego.</em>
</p>
<br>

### NIVEL
Durante el nivel aparece un contador ascendente en la parte superior de la pantalla, éste solo sirve para conseguir la tercera estrella.

<p align="center">
  <img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/42d9ce89-936d-4942-a11f-bc7a79317bbd" />
  <br>
  <em>Figura 9. Interfaz del nivel con el contador visible.</em>
</p>
<br>

En la esquina superior derecha aparece un botón de pausa el cuál pausa el juego, el contador y te lleva al menú de pausa.

**El menú de pausa** te permite salir del nivel, reiniciarlo, reanudarlo e ir a los ajustes.

<p align="center">
  <img width="500" height="588" alt="image" src="https://github.com/user-attachments/assets/c1e6e750-27ad-4d26-91b4-c03437d389ed" />
  <br>
  <em>Figura 10. Menú de pausa dentro del nivel.</em>
</p>
<br>

Al completar el nivel se muestra una pantalla de resultados en la que aparecen las 3 estrellas que puedes conseguir y cuáles de ellas has conseguido. Además hay un botón para pasar al siguiente nivel.  
 [(Ver Figura 5)](https://github.com/user-attachments/assets/279b1c54-ef14-433a-b899-aa7e970fae3a)

<br>

## Complejidad de desarrollo
Creo que lo más complejo de desarrollar es el diseño de niveles. 

Las mecánicas son pocas y simples, estas se repiten constantemente a lo largo de los niveles, lo complejo es hacer que los niveles no se sientan repetitivos y siempre supongan un reto tanto mental para resolver los puzles, como de habilidad a la hora de moverse por el mapa.

A nivel artístico no tiene mucho, es un diseño anticuado y simple, se podría mejorar.

<br>

## Conocimientos necesarios para completarlo
* Movimiento básico y animaciones de los personajes.  
* Interacciones y eventos (Pulsar botón abre puerta).  
* UI básica.  
* Pixel Art básico.  

<br>

## Conclusiones
Creo que es un juego fácil de replicar y también bastante escalable, se le pueden añadir mecánicas diferentes para acomplejar los niveles.

A nivel artístico es muy mejorable y fácil de reemplazar por otro estilo completamente diferente.

<br>

## Webgrafía
1. Minijuegos.com. [https://www.minijuegos.com/](https://www.minijuegos.com/)
2. Wikipedia. “Fireboy and Watergirl”. [https://en.wikipedia.org/wiki/Fireboy_and_Watergirl](https://en.wikipedia.org/wiki/Fireboy_and_Watergirl)  
