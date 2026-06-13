class Cocinero {
  // Arrays de sprites separados por dirección y por si lleva o no un plato
  PImage[] animNSDerecha;    // Sin plato, mirando a la derecha
  PImage[] animNSIzquierda;  // Sin plato, mirando a la izquierda
  PImage[] animNSAtras;      // Sin plato, mirando para atrás
  PImage[] animNSFrente;     // Sin plato, mirando al frente
  PImage[] animNLDerecha;    // Llevando plato, mirando a la derecha
  PImage[] animNLIzquierda;  // Llevando plato, mirando a la izquierda
  PImage[] animNLAtras;      // Llevando plato, mirando para atrás
  PImage[] animNLFrente;     // Llevando plato, mirando al frente

  int x, y, velocidad, comidas, vidas;
  int totalImg  = 3;   // 3 frames por animación (0, 1, 2)
  int imgActual = 0;
  int direccion = 3;   // 0=derecha 1=izquierda 2=atrás 3=frente
  int estado    = 0;
  boolean llevandoPlato = false;

  Cocinero() {
    x         = width / 2;
    y         = height / 2;
    velocidad = 6;
    vidas     = 3;
    comidas   = 0;

    animNSDerecha   = new PImage[totalImg];
    animNSIzquierda = new PImage[totalImg];
    animNSAtras     = new PImage[totalImg];
    animNSFrente    = new PImage[totalImg];
    animNLDerecha   = new PImage[totalImg];
    animNLIzquierda = new PImage[totalImg];
    animNLAtras     = new PImage[totalImg];
    animNLFrente    = new PImage[totalImg];

    // Carga los 8 sets de animación (sin plato y con plato, 4 direcciones cada uno)
    for (int i = 0; i < totalImg; i++) {
      animNSDerecha[i]   = loadImage("neutralSinPlato_Derecha_"   + i + ".png");
      animNSIzquierda[i] = loadImage("neutralSinPlato_Izquierda_" + i + ".png");
      animNSAtras[i]     = loadImage("neutralSinPlato_Atrás_"     + i + ".png");
      animNSFrente[i]    = loadImage("neutralSinPlato_Frente_"    + i + ".png");
      animNLDerecha[i]   = loadImage("neutralLlevandoPlato_Derecha_"   + i + ".png");
      animNLIzquierda[i] = loadImage("neutralLlevandoPlato_Izquierda_" + i + ".png");
      animNLAtras[i]     = loadImage("neutralLlevandoPlato_Atrás_"     + i + ".png");
      animNLFrente[i]    = loadImage("neutralLlevandoPlato_Frente_"    + i + ".png");
    }
  }

  void avanzarAnimacion() {
    // Módulo para que el índice cicle sin desbordarse
    imgActual = (imgActual + 1) % totalImg;
  }

  void mostrarCocinero() {
    // Por defecto usa los sprites sin plato
    PImage[] animDerecha   = animNSDerecha;
    PImage[] animIzquierda = animNSIzquierda;
    PImage[] animAtras     = animNSAtras;
    PImage[] animFrente    = animNSFrente;

    // Si está en estado normal Y lleva plato, cambia al set con plato
    if (estado == 0 && llevandoPlato) {
      animDerecha   = animNLDerecha;
      animIzquierda = animNLIzquierda;
      animAtras     = animNLAtras;
      animFrente    = animNLFrente;
    }

    // Dibuja el frame actual según la dirección que mira
    if (direccion == 0) {
      image(animDerecha[imgActual], x, y, 60, 100);
    } else if (direccion == 1) {
      image(animIzquierda[imgActual], x, y, 60, 100);
    } else if (direccion == 2) {
      image(animAtras[imgActual], x, y, 60, 100);
    } else if (direccion == 3) {
      image(animFrente[imgActual], x, y, 60, 100);
    }
  }

  void moverCocinero() {
    // Movimiento con flechas, con límites para que no salga del escenario jugable
    if (keyPressed && keyCode == LEFT && x > 110) {
      x -= velocidad;
      direccion = 1;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == RIGHT && x < 500) {
      x += velocidad;
      direccion = 0;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == UP && y > 140) {
      y -= velocidad;
      direccion = 2;
      avanzarAnimacion();
    } else if (keyPressed && keyCode == DOWN && y < 425) {
      y += velocidad;
      direccion = 3;
      avanzarAnimacion();
    } else {
      imgActual = 0; // Vuelve al frame de reposo cuando no se mueve
    }
  }
}
