Food Frenzy: Pixel Feast

Un videojuego 2D desarrollado en Processing que combina la gestión de recursos bajo presión con mecánicas de plataformas y recolección. 
El proyecto sigue la historia de una Gamer llamada Emma, quien espera sus pedidos mientras el jugador debe cocinar y entregar la comida sorteando el caos de una habitación desordenada.
 Mecánicas del Juego
El gameplay se divide en dos fases críticas:
1.  Fase de Cocina (Nivel 1): Inspirado en Overcooked, el jugador debe preparar pedidos específicos en un tiempo límite. Cada plato completado suma 10 puntos y habilita el lanzamiento a la siguiente etapa.
2.  Fase de Entrega (Nivel 2): Basado en la jugabilidad de SDWA. La comida lanzada aparece en la habitación de Emma. Ella debe atrapar los pedidos sorteando obstáculos en su cuarto desordenado. Cada acierto suma otros 10 puntos.
Condición de victoria: Cumplir con la cuota de puntos atrapando la comida antes de que el tiempo se agote.
 Stack Tecnológico
•	Motor/Lenguaje: [Processing](https://processing.org/) (Java)
•	Diseño Gráfico: [LibreSprite](https://libresprite.github.io/) (Pixel Art)
•	Arquitectura: Programación Orientada a Objetos (POO)

 Estado del Desarrollo
•	Actualmente, el proyecto se encuentra en fase de Prototipado Inicial:
•	Configuración del repositorio y entorno de trabajo.
•	Creación de assets principales (Emma y Fondos) en Pixel Art.
•	Implementación de la clase `GamerEmma` para la gestión de estados y dibujo.
•	Implementación de lógica de colisiones y movimiento.
•	Sistema de temporizador y contador de puntaje.

Organización del Código

El código está estructurado para ser escalable, separando las entidades en clases independientes:
•	“GamerEmma.pde”: Clase encargada de la lógica, animaciones y estados de la protagonista.
•	“/data”: Carpeta de recursos (assets) que contiene los archivos `.png` exportados desde LibreSprite.

---
Proyecto desarrollado por dos estudiantes de Ing. En Sistemas de Información.
Sofía Belén Barboza Arguello.
Delfina Amendolari Volman.
