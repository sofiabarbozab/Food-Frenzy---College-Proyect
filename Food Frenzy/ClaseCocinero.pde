class Cocinero {
  /*
   ARRAYS DE ANIMACIÓN:
   Nomenclatura:
   anim + [Estado] + [Condición] + [Dirección]
   Estado:
   N = Neutral
   V = Nervioso
   Condición:
   S = SinPlato
   L = LlevandoPlato
   */
  // Neutral + SinPlato
  PImage[] animNSDerecha;
  PImage[] animNSIzquierda;
  PImage[] animNSAtras;
  PImage[] animNSFrente;
  // Neutral + LlevandoPlato
  PImage[] animNLDerecha;
  PImage[] animNLIzquierda;
  PImage[] animNLAtras;
  PImage[] animNLFrente;

  // Atributos
  int x, y, velocidad, comidas, vidas;
  int totalImg  = 3;   // frames por animación: 0, 1, 2
  int imgActual = 0;   // frame que se está mostrando ahora
  int direccion = 3;   // 0=Derecha  1=Izquierda  2=Atras  3=Frente
  int estado    = 0;   // 0=Neutral
  boolean llevandoPlato = false;

  // Constructor
  Cocinero() {
    x         = width / 2;
    y         = height / 2;
    velocidad = 6;
    vidas     = 3;
    comidas   = 0;

    // Inicializar todos los arrays
    animNSDerecha   = new PImage[totalImg];
    animNSIzquierda = new PImage[totalImg];
    animNSAtras     = new PImage[totalImg];
    animNSFrente    = new PImage[totalImg];
    animNLDerecha   = new PImage[totalImg];
    animNLIzquierda = new PImage[totalImg];
    animNLAtras     = new PImage[totalImg];
    animNLFrente    = new PImage[totalImg];

    // Cargar las imagenes
    for (int i = 0; i < totalImg; i++) {
      // Neutral + SinPlato
      animNSDerecha[i]   = loadImage("neutralSinPlato_Derecha_"   + i + ".png");
      animNSIzquierda[i] = loadImage("neutralSinPlato_Izquierda_" + i + ".png");
      animNSAtras[i]     = loadImage("neutralSinPlato_Atrás_"     + i + ".png");
      animNSFrente[i]    = loadImage("neutralSinPlato_Frente_"    + i + ".png");
      // Neutral + LlevandoPlato
      animNLDerecha[i]   = loadImage("neutralLlevandoPlato_Derecha_"   + i + ".png");
      animNLIzquierda[i] = loadImage("neutralLlevandoPlato_Izquierda_" + i + ".png");
      animNLAtras[i]     = loadImage("neutralLlevandoPlato_Atrás_"     + i + ".png");
      animNLFrente[i]    = loadImage("neutralLlevandoPlato_Frente_"    + i + ".png");
    }
  }

  // Avanzar animación
  void avanzarAnimacion() {
    imgActual = (imgActual + 1) % totalImg;
  }

  // Dibujar cocinero
  void mostrarCocinero() {
    // Por defecto: Neutral + SinPlato
    PImage[] animDerecha   = animNSDerecha;
    PImage[] animIzquierda = animNSIzquierda;
    PImage[] animAtras     = animNSAtras;
    PImage[] animFrente    = animNSFrente;

    // Si está llevando plato, usar el set correspondiente
    if (estado == 0 && llevandoPlato) {
      animDerecha   = animNLDerecha;
      animIzquierda = animNLIzquierda;
      animAtras     = animNLAtras;
      animFrente    = animNLFrente;
    }

    // Dibujar el frame actual según la dirección
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

  // Mover cocinero
  void moverCocinero() {
    // Un solo if/else if para que solo se ejecute UNA dirección por frame
    // y el reset de imgActual ocurra solo cuando no se presiona nada
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
      imgActual = 0; // vuelve al frame estático cuando no se mueve
    }
  }
}
