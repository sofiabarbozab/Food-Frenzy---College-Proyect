class GamerEmma {
  PImage Imgamer;
  float PgirlX, PgirlY;
  float velocidad = 4.0;

  //constructor
  GamerEmma() {
    Imgamer = loadImage("gamer-estadoUno.png");
    PgirlX = width/2;
    PgirlY = height/2;
  }
  //dibujo de clase, con uso de "if"
  void dibujarEmmaUno() {
    if (Imgamer != null) {
      image(Imgamer, PgirlX, PgirlY, 120, 120);
    }
  }
  void movimientoEmma() {
    if (keyPressed && key == 'a' && PgirlX > 0 ) {
      PgirlX -= velocidad;
    }
    if (keyPressed && key == 'd' && PgirlX < 600 ) {
      PgirlX += velocidad;
    }
    if (keyPressed && key == 'w' && PgirlY > 0 ) {
      PgirlY -= velocidad;
    }
    if (keyPressed && key == 's' && PgirlY < 600 ) {
      PgirlY += velocidad;
    }  
}
}
