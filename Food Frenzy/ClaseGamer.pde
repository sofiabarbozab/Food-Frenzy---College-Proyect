class GamerEmma {
  PImage Imgamer;
  int PgirlX, PgirlY, velocidad;

  //constructor.
  GamerEmma() {
    Imgamer = loadImage("gamer-estadoUno.png");
    PgirlX = width/2;
    PgirlY = height/2;
    velocidad = 10;
  }
  //dibuja de clase.
  void dibujarEmmaUno() {
    image(Imgamer, PgirlX, PgirlY, 100, 100);
  }
  //Función mvovimiento de Emma por medio de condicionales.
  void movimientoEmma() {
    if (keyPressed && key == 'a' && PgirlX > 0 ) {
      PgirlX -= velocidad;
    }
    if (keyPressed && key == 'd' && PgirlX < 500 ) {
      PgirlX += velocidad;
    }
    if (keyPressed && key == 'w' && PgirlY > 0 ) {
      PgirlY -= velocidad;
    }
    if (keyPressed && key == 's' && PgirlY < 500 ) {
      PgirlY += velocidad;
    }
  }
}
