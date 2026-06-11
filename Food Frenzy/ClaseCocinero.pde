class Cocinero {
  PImage[] animNSDerecha;
  PImage[] animNSIzquierda;
  PImage[] animNSAtras;
  PImage[] animNSFrente;
  PImage[] animNLDerecha;
  PImage[] animNLIzquierda;
  PImage[] animNLAtras;
  PImage[] animNLFrente;

  int x, y, velocidad, comidas, vidas;
  int totalImg  = 3;
  int imgActual = 0;
  int direccion = 3;
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
    imgActual = (imgActual + 1) % totalImg;
  }

  void mostrarCocinero() {
    PImage[] animDerecha   = animNSDerecha;
    PImage[] animIzquierda = animNSIzquierda;
    PImage[] animAtras     = animNSAtras;
    PImage[] animFrente    = animNSFrente;

    if (estado == 0 && llevandoPlato) {
      animDerecha   = animNLDerecha;
      animIzquierda = animNLIzquierda;
      animAtras     = animNLAtras;
      animFrente    = animNLFrente;
    }

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
      imgActual = 0;
    }
  }
}
