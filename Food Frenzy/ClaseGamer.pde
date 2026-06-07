class Gamer {
  PImage Contenta_Atras_1, Contenta_Atras_2, Contenta_Atras_Inmovil, Contenta_Frente_1, Contenta_Frente_2, Contenta_Frente_Inmovil, Contenta_Izquierda_1, Contenta_Izquierda_2, Contenta_Izquierda_Inmovil, Contenta_Derecha_1, Contenta_Derecha_2, Contenta_Derecha_Inmovil;
  PImage Enojada_Atras_1, Enojada_Atras_2, Enojada_Atras_Inmovil, Enojada_Frente_1, Enojada_Frente_2, Enojada_Frente_Inmovil, Enojada_Izquierda_1, Enojada_Izquierda_2, Enojada_Izquierda_Inmovil, Enojada_Derecha_1, Enojada_Derecha_2, Enojada_Derecha_Inmovil;
  PImage Triste_Atras_1, Triste_Atras_2, Triste_Atras_Inmovil, Triste_Frente_1, Triste_Frente_2, Triste_Frente_Inmovil, Triste_Izquierda_1, Triste_Izquierda_2, Triste_Izquierda_Inmovil, Triste_Derecha_1, Triste_Derecha_2, Triste_Derecha_Inmovil;
  // delcaración de arrays
  PImage[] animDerechaC;
  PImage[] animIzquierdaC;
  PImage[] animAtrasC;
  PImage[] animFrenteC;

  PImage[] animDerechaE;
  PImage[] animIzquierdaE;
  PImage[] animAtrasE;
  PImage[] animFrenteE;

  PImage[] animDerechaT;
  PImage[] animIzquierdaT;
  PImage[] animAtrasT;
  PImage[] animFrenteT;

  int x, y, velocidad, comidas, vidas;
  int totalImg = 2;
  int imgActual = 0;
  int direccion = 0;

  //constructor.
  Gamer() {
    Contenta_Atras_1 = loadImage("Contenta_Atrás_1.png");
    Contenta_Atras_2 = loadImage("Contenta_Atrás_2.png");
    Contenta_Atras_Inmovil = loadImage("Contenta_Atrás_Inmóvil.png");
    Contenta_Frente_1 = loadImage("Contenta_Frente_1.png");
    Contenta_Frente_2 = loadImage("Contenta_Frente_2.png");
    Contenta_Frente_Inmovil = loadImage("Contenta_Frente_Inmóvil.png");
    Contenta_Izquierda_1 = loadImage("Contenta_Izquierda_1.png");
    Contenta_Izquierda_2 = loadImage("Contenta_Izquierda_2.png");
    Contenta_Izquierda_Inmovil = loadImage("Contenta_Izquierda_Inmóvil.png");
    Contenta_Derecha_1 = loadImage("Contenta_Derecha_1");
    Contenta_Derecha_2 = loadImage("Contenta_Derecha_2");
    Contenta_Derecha_Inmovil = loadImage("Contenta_Derecha_Inmóvil");
    Enojada_Atras_1 = loadImage("Enojada_Atrás_1");
    Enojada_Atras_2 = loadImage("Enojada_Atrás_2");
    Enojada_Atras_Inmovil = loadImage("Enojada_Atrás_Inmóvil");
    Enojada_Frente_1 = loadImage("Enojada_Frente_1");
    Enojada_Frente_2 = loadImage("Enojada_Frente_2");
    Enojada_Frente_Inmovil = loadImage("Enojada_Frente_Inmóvil");
    Enojada_Izquierda_1 = loadImage("Enojada_Izquierda_1");
    Enojada_Izquierda_2 = loadImage("Enojada_Izquierda_2");
    Enojada_Izquierda_Inmovil = loadImage("Enojada_Izquierda_Inmóvil");
    Enojada_Derecha_1 = loadImage("Enojada_Derecha_1");
    Enojada_Derecha_2 = loadImage("Enojada_Derecha_2");
    Enojada_Derecha_Inmovil = loadImage("Enojada_Derecha_Inmóvil");
    Triste_Atras_1 = loadImage("Triste_Atrás_1");
    Triste_Atras_2 = loadImage("Triste_Atrás_2");
    Triste_Atras_Inmovil = loadImage("Triste_Atrás_Inmóvil");
    Triste_Frente_1 = loadImage("Triste_Frente_1");
    Triste_Frente_2 = loadImage("Triste_Frente_2");
    Triste_Frente_Inmovil = loadImage("Triste_Frente_Inmóvil");
    Triste_Izquierda_1 = loadImage("Triste_Izquierda_1");
    Triste_Izquierda_2 = loadImage("Triste_Izquierda_2");
    Triste_Izquierda_Inmovil = loadImage("Triste_Izquierda_Inmóvil");
    Triste_Derecha_1 = loadImage("Triste_Derecha_1");
    Triste_Derecha_2 = loadImage("Triste_Derecha_2");
    Triste_Derecha_Inmovil = loadImage("Triste_Derecha_Inmóvil");
    x = width/2;
    y = height/2;
    velocidad = 4;
    comidas = 0;
    vidas = 0; // Si no logra atrapar una comida pierde una vida

    // inicialización de los Arrays
    animDerechaC = new PImage[totalImg];
    animIzquierdaC = new PImage[totalImg];
    animAtrasC = new PImage[totalImg];
    animFrenteC = new PImage[totalImg];

    animDerechaE = new PImage[totalImg];
    animIzquierdaE = new PImage[totalImg];
    animAtrasE = new PImage[totalImg];
    animFrenteE = new PImage[totalImg];


    animDerechaT = new PImage[totalImg];
    animIzquierdaT = new PImage[totalImg];
    animAtrasT = new PImage[totalImg];
    animFrenteT = new PImage[totalImg];

    //cargo las imágenes
    for (int i = 0; i < totalImg; i++) {
      animDerechaC[i] = loadImage("Contenta_Derecha_" + i + ".png");
      animIzquierdaC[i] = loadImage("Contenta_Izquierda_" + i + ".png");
      animAtrasC[i] = loadImage("Contenta_Atrás_" + i + ".png");
      animFrenteC[i] = loadImage("Contenta_Frente_" + i + ".png");
    }
  }


  void avanzarAnimacion() {
    imgActual = (imgActual+ 1) % totalImg;
  }

  //Función movimiento de Emma por medio de condicionales y arrays.

  //izquierda
  void moverGamer() {
    if (keyPressed && key == 'a' && x > 0 ) {
      x -= 3;
      direccion = 1;
      avanzarAnimacion();
    } else {
      imgActual = 0;
    }


    //derecha
    if (keyPressed && key == 'd' && x < 500 ) {
      velocidad++;
      x +=3 ;
      direccion = 0;
      avanzarAnimacion();
    } else {
      imgActual = 0;
    }

    //arriba
    if (keyPressed && key == 'w' && y > 0 ) {
      y -= 4;
      direccion = 2;
      avanzarAnimacion();
    } else {
      imgActual = 0;
    }


    //frente
    if (keyPressed && key == 's' && y < 500 ) {
      y += 4;
      direccion = 3;
      avanzarAnimacion();
    }
    else{
    imgActual = 0; 
    }
  }
  
  
  void dibujarGamer() {
    if (direccion == 0) {
      image(animDerechaC[imgActual], x, y);
    }
      else if (direccion == 1) {
      image(animIzquierdaC[imgActual], x, y);
    }
      else if (direccion == 2) {
      image(animAtrasC[imgActual], x, y);
    }
      else if (direccion == 3) {
      image(animFrenteC[imgActual], x, y);
    }
  }
}
