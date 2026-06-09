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

  // Nervioso + SinPlato
  PImage[] animVSDerecha;
  PImage[] animVSIzquierda;
  PImage[] animVSAtras;
  PImage[] animVSFrente;

  // Nervioso + LlevandoPlato
  PImage[] animVLDerecha;
  PImage[] animVLIzquierda;
  PImage[] animVLAtras;
  PImage[] animVLFrente;

  // Atributos
  int x, y, velocidad, comidas, vidas;

  int totalImg  = 3;   // frames por animación: 0, 1, 2
  int imgActual = 0;   // frame que se está mostrando ahora
  int direccion = 3;   // 0=Derecha  1=Izquierda  2=Atras  3=Frente
  int estado    = 0;   // 0=Neutral  1=Nervioso
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

    animVSDerecha   = new PImage[totalImg];
    animVSIzquierda = new PImage[totalImg];
    animVSAtras     = new PImage[totalImg];
    animVSFrente    = new PImage[totalImg];

    animVLDerecha   = new PImage[totalImg];
    animVLIzquierda = new PImage[totalImg];
    animVLAtras     = new PImage[totalImg];
    animVLFrente    = new PImage[totalImg];

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

      // Nervioso + SinPlato
      animVSDerecha[i]   = loadImage("nerviosoSinPlato_Derecha_"   + i + ".png");
      animVSIzquierda[i] = loadImage("nerviosoSinPlato_Izquierda_" + i + ".png");
      animVSAtras[i]     = loadImage("nerviosoSinPlato_Atrás_"     + i + ".png");
      animVSFrente[i]    = loadImage("nerviosoSinPlato_Frente_"    + i + ".png");

      // Nervioso + LlevandoPlato
      animVLDerecha[i]   = loadImage("nerviosoLlevandoPlato_Derecha_"   + i + ".png");
      animVLIzquierda[i] = loadImage("nerviosoLlevandoPlato_Izquierda_" + i + ".png");
      animVLAtras[i]     = loadImage("nerviosoLlevandoPlato_Atrás_"     + i + ".png");
      animVLFrente[i]    = loadImage("nerviosoLlevandoPlato_Frente_"    + i + ".png");
    }
  }

  // Avanzar animación
  void avanzarAnimacion() {
    imgActual = (imgActual + 1) % totalImg;
  }

  // Dibujar cocinero
  void mostrarCocinero() {

    // Elegir los 4 arrays correctos según estado + condición
    PImage[] animDerecha, animIzquierda, animAtras, animFrente;

    if (estado == 0 && !llevandoPlato) {
      animDerecha = animNSDerecha;
      animIzquierda = animNSIzquierda;
      animAtras = animNSAtras;
      animFrente = animNSFrente;

    } else if (estado == 0 && llevandoPlato) {
      animDerecha = animNLDerecha;
      animIzquierda = animNLIzquierda;
      animAtras = animNLAtras;
      animFrente = animNLFrente;

    } else if (estado == 1 && !llevandoPlato) {
      animDerecha = animVSDerecha;
      animIzquierda = animVSIzquierda;
      animAtras = animVSAtras;
      animFrente = animVSFrente;

    } else {
      animDerecha = animVLDerecha;
      animIzquierda = animVLIzquierda;
      animAtras = animVLAtras;
      animFrente = animVLFrente;
    }

    // Dibujar el frame actual según la dirección
    if (direccion == 0) {
      image(animDerecha[imgActual],   x, y, 60, 100);
    } else if (direccion == 1) {
      image(animIzquierda[imgActual], x, y, 60, 100);
    } else if (direccion == 2) {
      image(animAtras[imgActual],     x, y, 60, 100);
    } else if (direccion == 3) {
      image(animFrente[imgActual],    x, y, 60, 100);
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
  
  void mostrarStats(){
    
  }
}
