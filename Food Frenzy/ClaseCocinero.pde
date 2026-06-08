class Cocinero{
  PImage neutralSinPlato_Atras_1,neutralSinPlato_Atras_2,neutralSinPlato_Atras_Inmovil,neutralSinPlato_Frente_1,neutralSinPlato_Frente_2,neutralSinPlato_Frente_Inmovil,neutralSinPlato_Izquierda_1,neutralSinPlato_Izquierda_2,neutralSinPlato_Izquierda_Inmovil,neutralSinPlato_Derecha_1,neutralSinPlato_Derecha_2,neutralSinPlato_Derecha_Inmovil;
  PImage neutralLlevandoPlato_Atras_1,neutralLlevandoPlato_Atras_2,neutralLlevandoPlato_Atras_Inmovil,neutralLlevandoPlato_Frente_1,neutralLlevandoPlato_Frente_2,neutralLlevandoPlato_Frente_Inmovil,neutralLlevandoPlato_Izquierda_1,neutralLlevandoPlato_Izquierda_2,neutralLlevandoPlato_Izquierda_Inmovil,neutralLlevandoPlato_Derecha_1,neutralLlevandoPlato_Derecha_2,neutralLlevandoPlato_Derecha_Inmovil;
  PImage nerviosoSinPlato_Atras_1,nerviosoSinPlato_Atras_2,nerviosoSinPlato_Atras_Inmovil,nerviosoSinPlato_Frente_1,nerviosoSinPlato_Frente_2,nerviosoSinPlato_Frente_Inmovil,nerviosoSinPlato_Izquierda_1,nerviosoSinPlato_Izquierda_2,nerviosoSinPlato_Izquierda_Inmovil,nerviosoSinPlato_Derecha_1,nerviosoSinPlato_Derecha_2,nerviosoSinPlato_Derecha_Inmovil;
  PImage nerviosoLlevandoPlato_Atras_1,nerviosoLlevandoPlato_Atras_2,nerviosoLlevandoPlato_Atras_Inmovil,nerviosoLlevandoPlato_Frente_1,nerviosoLlevandoPlato_Frente_2,nerviosoLlevandoPlato_Frente_Inmovil,nerviosoLlevandoPlato_Izquierda_1,nerviosoLlevandoPlato_Izquierda_2,nerviosoLlevandoPlato_Izquierda_Inmovil,nerviosoLlevandoPlato_Derecha_1,nerviosoLlevandoPlato_Derecha_2,nerviosoLlevandoPlato_Derecha_Inmovil;
  int x,y,velocidad,comidas,vidas;
  
  Cocinero(){
    neutralSinPlato_Atras_1 = loadImage("neutralSinPlato_Atrás_1.png");
    neutralSinPlato_Atras_2 = loadImage("neutralSinPlato_Atrás_2.png");
    neutralSinPlato_Atras_Inmovil = loadImage("neutralSinPlato_Atrás_0.png");
    neutralSinPlato_Frente_1 = loadImage("neutralSinPlato_Frente_1.png");
    neutralSinPlato_Frente_2 = loadImage("neutralSinPlato_Frente_2.png");
    neutralSinPlato_Frente_Inmovil = loadImage("neutralSinPlato_Frente_Inmóvil.png");
    neutralSinPlato_Izquierda_1 = loadImage("neutralSinPlato_Izquierda_1.png");
    neutralSinPlato_Izquierda_2 = loadImage("neutralSinPlato_Izquierda_2.png");
    neutralSinPlato_Izquierda_Inmovil = loadImage("neutralSinPlato_Izquierda_0.png");
    neutralSinPlato_Derecha_1 = loadImage("neutralSinPlato_Derecha_1.png");
    neutralSinPlato_Derecha_2 = loadImage("neutralSinPlato_Derecha_2.png");
    neutralSinPlato_Derecha_Inmovil = loadImage("neutralSinPlato_Derecha_0.png");
    neutralLlevandoPlato_Atras_1 = loadImage("neutralLlevandoPlato_Atrás_1.png");
    neutralLlevandoPlato_Atras_2 = loadImage("neutralLlevandoPlato_Atrás_2.png");
    neutralLlevandoPlato_Atras_Inmovil = loadImage("neutralLlevandoPlato_Atrás_0.png");
    neutralLlevandoPlato_Frente_1 = loadImage("neutralLlevandoPlato_Frente_1.png");
    neutralLlevandoPlato_Frente_2 = loadImage("neutralLlevandoPlato_Frente_2.png");
    neutralLlevandoPlato_Frente_Inmovil = loadImage("neutralLlevandoPlato_Frente_0.png");
    neutralLlevandoPlato_Izquierda_1 = loadImage("neutralLlevandoPlato_Izquierda_1.png");
    neutralLlevandoPlato_Izquierda_2 = loadImage("neutralLlevandoPlato_Izquierda_2.png");
    neutralLlevandoPlato_Izquierda_Inmovil = loadImage("neutralLlevandoPlato_Izquierda_0.png");
    neutralLlevandoPlato_Derecha_1 = loadImage("neutralLlevandoPlato_Derecha_1.png");
    neutralLlevandoPlato_Derecha_2 = loadImage("neutralLlevandoPlato_Derecha_2.png");
    neutralLlevandoPlato_Derecha_Inmovil = loadImage("neutralLlevandoPlato_Derecha_0.png");
    nerviosoSinPlato_Atras_1 = loadImage("nerviosoSinPlato_Atrás_1.png");
    nerviosoSinPlato_Atras_2 = loadImage("nerviosoSinPlato_Atrás_2.png");
    nerviosoSinPlato_Atras_Inmovil = loadImage("nerviosoSinPlato_Atrás_0.png");
    nerviosoSinPlato_Frente_1 = loadImage("nerviosoSinPlato_Frente_1.png");
    nerviosoSinPlato_Frente_2 = loadImage("nerviosoSinPlato_Frente_2.png");
    nerviosoSinPlato_Frente_Inmovil = loadImage("nerviosoSinPlato_Frente_0.png");
    nerviosoSinPlato_Izquierda_1 = loadImage("nerviosoSinPlato_Izquierda_1.png");
    nerviosoSinPlato_Izquierda_2 = loadImage("nerviosoSinPlato_Izquierda_2.png");
    nerviosoSinPlato_Izquierda_Inmovil = loadImage("nerviosoSinPlato_Izquierda_0.png");
    nerviosoSinPlato_Derecha_1 = loadImage("nerviosoSinPlato_Derecha_1.png");
    nerviosoSinPlato_Derecha_2 = loadImage("nerviosoSinPlato_Derecha_2.png");
    nerviosoSinPlato_Derecha_Inmovil = loadImage("nerviosoSinPlato_Derecha_0.png");
    nerviosoLlevandoPlato_Atras_1 = loadImage("nerviosoLlevandoPlato_Atrás_1.png");
    nerviosoLlevandoPlato_Atras_2 = loadImage("nerviosoLlevandoPlato_Atrás_2.png");
    nerviosoLlevandoPlato_Atras_Inmovil = loadImage("nerviosoLlevandoPlato_Atrás_0.png");
    nerviosoLlevandoPlato_Frente_1 = loadImage("nerviosoLlevandoPlato_Frente_1.png");
    nerviosoLlevandoPlato_Frente_2 = loadImage("nerviosoLlevandoPlato_Frente_2.png");
    nerviosoLlevandoPlato_Frente_Inmovil = loadImage("nerviosoLlevandoPlato_Frente_0.png");
    nerviosoLlevandoPlato_Izquierda_1 = loadImage("nerviosoLlevandoPlato_Izquierda_1.png");
    nerviosoLlevandoPlato_Izquierda_2 = loadImage("nerviosoLlevandoPlato_Izquierda_2.png");
    nerviosoLlevandoPlato_Izquierda_Inmovil = loadImage("nerviosoLlevandoPlato_Izquierda_0.png");
    nerviosoLlevandoPlato_Derecha_1 = loadImage("nerviosoLlevandoPlato_Derecha_1.png");
    nerviosoLlevandoPlato_Derecha_2 = loadImage("nerviosoLlevandoPlato_Derecha_2.png");
    nerviosoLlevandoPlato_Derecha_Inmovil = loadImage("nerviosoLlevandoPlato_Derecha_0.png");
    x = width/2;
    y = height/2;
    velocidad =  4;
    vidas = 3; // Si no logra sacar el platillo del horno antes de que pasen 3 segundos, pierde una vida
    comidas = 0;
  }
  
  void mostrarCocinero(){ //Función que muestra al Cocinero
    image(neutralSinPlato_Atras_1,x,y,100,100);
  }

  void moverCocinero(){ //Función que mueve al Cocinero
    if (keyPressed && key == CODED && keyCode == LEFT && x > 110 ) {
      x -= velocidad;
    }
    if (keyPressed && key == CODED && keyCode == RIGHT && x < 500 ) {
      x += velocidad;
    }
    if (keyPressed && key == CODED && keyCode == UP && y > 50 ) {
      y -= velocidad;
    }
    if (keyPressed && key == CODED && keyCode == DOWN && y < 405 ) {
      y += velocidad;
    }
  }
}
