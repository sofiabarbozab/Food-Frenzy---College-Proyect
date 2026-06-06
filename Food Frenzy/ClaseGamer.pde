class Gamer {
  PImage Contenta_Atras_1,Contenta_Atras_2,Contenta_Atras_Inmovil,Contenta_Frente_1,Contenta_Frente_2,Contenta_Frente_Inmovil,Contenta_Izquierda_1,Contenta_Izquierda_2,Contenta_Izquierda_Inmovil,Contenta_Derecha_1,Contenta_Derecha_2,Contenta_Derecha_Inmovil;
  PImage Enojada_Atras_1,Enojada_Atras_2,Enojada_Atras_Inmovil,Enojada_Frente_1,Enojada_Frente_2,Enojada_Frente_Inmovil,Enojada_Izquierda_1,Enojada_Izquierda_2,Enojada_Izquierda_Inmovil,Enojada_Derecha_1,Enojada_Derecha_2,Enojada_Derecha_Inmovil;
  PImage Triste_Atras_1,Triste_Atras_2,Triste_Atras_Inmovil,Triste_Frente_1,Triste_Frente_2,Triste_Frente_Inmovil,Triste_Izquierda_1,Triste_Izquierda_2,Triste_Izquierda_Inmovil,Triste_Derecha_1,Triste_Derecha_2,Triste_Derecha_Inmovil;
  int x,y,velocidad,comidas,vidas;

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
  }
  //dibuja de clase.
  void mostrarGamerUno() {
    image(ImgGamer, x, y, 100, 100);
  }
  //Función movimiento de Emma por medio de condicionales.
  void moverGamer() {
    if (keyPressed && key == 'a' && x > 0 ) {
      x -= velocidad;
    }
    if (keyPressed && key == 'd' && x < 500 ) {
      x += velocidad;
    }
    if (keyPressed && key == 'w' && y > 0 ) {
      y -= velocidad;
    }
    if (keyPressed && key == 's' && y < 500 ) {
      y += velocidad;
    }
  }
}
