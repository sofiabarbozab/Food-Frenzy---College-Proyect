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
    image(Imgamer, PgirlX, PgirlY, 120, 120);
  }
  //mvovimiento de Emma por medio de condicionales
  void movimientoEmma() {
    if (keyPressed && key == 'a' && PgirlX > 0 ) {
      PgirlX -= velocidad;
    }
    if (keyPressed && key == 'd' && PgirlX < 480 ) {
      PgirlX += velocidad;
    }
    if (keyPressed && key == 'w' && PgirlY > 0 ) {
      PgirlY -= velocidad;
    }
    if (keyPressed && key == 's' && PgirlY < 480 ) {
      PgirlY += velocidad;
    }
  }
}
