class Gamer {

  // Arrays de animación - Contenta
  PImage[] animDerechaC;
  PImage[] animIzquierdaC;
  PImage[] animAtrasC;
  PImage[] animFrenteC;

  // Arrays de animación - Enojada
  PImage[] animDerechaE;
  PImage[] animIzquierdaE;
  PImage[] animAtrasE;
  PImage[] animFrenteE;

  // Arrays de animación - Triste
  PImage[] animDerechaT;
  PImage[] animIzquierdaT;
  PImage[] animAtrasT;
  PImage[] animFrenteT;

  int x, y, velocidad, comidas, vidas;
  int totalImg = 3;   // FIX: eran 3 frames (0, 1, 2)
  int imgActual = 0;
  int direccion = 0;
  int estado = 0;     // 0 = Contenta, 1 = Enojada, 2 = Triste

  // Constructor
  Gamer() {
    x = width / 2;
    y = height / 2;
    velocidad = 4;
    comidas = 0;
    vidas = 3;

    // Inicialización de arrays
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

    // Carga de las imagenes
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

  // FIX: módulo para que imgActual cicle y no desborde el array
  void avanzarAnimacion() {
    imgActual = (imgActual + 1) % totalImg;
  }

  void dibujarGamer() {
    PImage[] animDerecha;
    PImage[] animIzquierda;
    PImage[] animAtras;
    PImage[] animFrente;

    // Selección de arrays según estado
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

    // Dibujo según dirección
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
    // FIX: if/else if para que solo UN bloque se ejecute por frame
    // y el reset de imgActual ocurra una sola vez al soltar la tecla
    if (keyPressed && key == 'a' && x > 0) {
      x -= velocidad;
      direccion = 1;
      avanzarAnimacion();
    } else if (keyPressed && key == 'd' && x < width) {
      x += velocidad;
      direccion = 0;
      avanzarAnimacion();
    } else if (keyPressed && key == 'w' && y > 0) {
      y -= velocidad;
      direccion = 2;
      avanzarAnimacion();
    } else if (keyPressed && key == 's' && y < height) {
      y += velocidad;
      direccion = 3;
      avanzarAnimacion();
    } else {
      imgActual = 0; // FIX: un solo reset al no presionar ninguna tecla
    }
  }
}
