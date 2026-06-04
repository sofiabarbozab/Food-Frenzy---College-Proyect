class Estados {
  int estado = 0;
  PImage ImgFondo;
  PImage ImgIniciop;
  PImage ImgCuarto;
  PImage ImgfinalD;
  PImage ImgfinalV;
  Estados() {
    ImgFondo = loadImage("cocina.png");
    ImgIniciop = loadImage("inicio.png");
    ImgCuarto = loadImage("cuarto.png");
    ImgfinalD = loadImage("finalD.png");
  }
  void Cocina() {
    image(ImgFondo, 0, 0, width, height);
  }
  void Inicio() {
    image(ImgIniciop, 0, 0, width, height);
  }
  void cuarto() {
  }

  void controles() {
  }
  void FinalD() {
  }
  void FinalV() {
  }
}
