class Gamer {

  // 3 estados de ánimo × 4 direcciones = 12 sets de animación
  // Contenta
  PImage[] animDerechaC;
  PImage[] animIzquierdaC;
  PImage[] animAtrasC;
  PImage[] animFrenteC;

  // Enojada
  PImage[] animDerechaE;
  PImage[] animIzquierdaE;
  PImage[] animAtrasE;
  PImage[] animFrenteE;

  // Triste
  PImage[] animDerechaT;
  PImage[] animIzquierdaT;
  PImage[] animAtrasT;
  PImage[] animFrenteT;

  int x, y, velocidad, comidas, vidas;
  int totalImg = 3;    // 3 frames por animación (0, 1, 2)
  int imgActual = 0;
  int direccion = 0;   // 0=derecha 1=izquierda 2=atrás 3=frente
  int estado = 0;      // 0=contenta 1=enojada 2=triste
  int tam;             // Tamaño del hitbox para colisiones

  Gamer() {
    x = width / 2;
    y = height / 2;
    velocidad = 4;
    vidas = 3;
    tam = 100;

    // Inicialización de los 12 arrays
    animDerechaC  = new PImage[totalImg];
    animIzquierdaC = new PImage[totalImg];
    animAtrasC    = new PImage[totalImg];
    animFrenteC   = new PImage[totalImg];

    animDerechaE  = new PImage[totalImg];
    animIzquierdaE = new PImage[totalImg];
    animAtrasE    = new PImage[totalImg];
    animFrenteE   = new PImage[totalImg];

    animDerechaT  = new PImage[totalImg];
    animIzquierdaT = new PImage[totalImg];
    animAtrasT    = new PImage[totalImg];
    animFrenteT   = new PImage[totalImg];

    // Carga de todas las imágenes para los 3 estados de ánimo
    for (int i = 0; i < totalImg; i++) {
      // Contenta
      animDerechaC[i]   = loadImage("Contenta_Derecha_"   + i + ".png");
      animIzquierdaC[i] = loadImage("Contenta_Izquierda_" + i + ".png");
      animAtrasC[i]     = loadImage("Contenta_Atrás_"     + i + ".png");
      animFrenteC[i]    = loadImage("Contenta_Frente_"    + i + ".png");

      // Enojada
      animDerechaE[i]   = loadImage("Enojada_Derecha_"   + i + ".png");
      animIzquierdaE[i] = loadImage("Enojada_Izquierda_" + i + ".png");
      animAtrasE[i]     = loadImage("Enojada_Atrás_"     + i + ".png");
      animFrenteE[i]    = loadImage("Enojada_Frente_"    + i + ".png");

      // Triste
      animDerechaT[i]   = loadImage("Triste_Derecha_"   + i + ".png");
      animIzquierdaT[i] = loadImage("Triste_Izquierda_" + i + ".png");
      animAtrasT[i]     = loadImage("Triste_Atrás_"     + i + ".png");
      animFrenteT[i]    = loadImage("Triste_Frente_"    + i + ".png");
    }
  }

  void avanzarAnimacion() {
    // Módulo para ciclar el índice sin salirse del array
    imgActual = (imgActual + 1) % totalImg;
  }

  void dibujarGamer() {
    PImage[] animDerecha;
    PImage[] animIzquierda;
    PImage[] animAtras;
    PImage[] animFrente;

    // Selecciona el set de animación según el estado de ánimo actual
    if (estado == 1) {
      animDerecha   = animDerechaE;
      animIzquierda = animIzquierdaE;
      animAtras     = animAtrasE;
      animFrente    = animFrenteE;
    } else if (estado == 2) {
      animDerecha   = animDerechaT;
      animIzquierda = animIzquierdaT;
      animAtras     = animAtrasT;
      animFrente    = animFrenteT;
    } else {
      animDerecha   = animDerechaC;
      animIzquierda = animIzquierdaC;
      animAtras     = animAtrasC;
      animFrente    = animFrenteC;
    }

    // Dibuja el frame actual según la dirección que mira
    if (direccion == 0) {
      image(animDerecha[imgActual], x, y);
    } else if (direccion == 1) {
      image(animIzquierda[imgActual], x, y);
    } else if (direccion == 2) {
      image(animAtras[imgActual], x, y);
    } else if (direccion == 3) {
      image(animFrente[imgActual], x, y);
    }
  }

  void moverGamer() {
    // Movimiento con flechas por toda la pantalla (sin límites de zona)
    if (keyPressed && keyCode == LEFT && x > 0) {
      x -= velocidad;
      direccion = 1;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == RIGHT && x < width) {
      x += velocidad;
      direccion = 0;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == UP && y > 0) {
      y -= velocidad;
      direccion = 2;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == DOWN && y < height) {
      y += velocidad;
      direccion = 3;
      avanzarAnimacion();
    } else {
      imgActual = 0; // Vuelve al frame de reposo cuando no se presiona ninguna tecla
    }
  }
}
