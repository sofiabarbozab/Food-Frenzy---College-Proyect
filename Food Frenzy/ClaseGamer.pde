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
}
