class Cocina {
  PImage ImgFondo;
  //Constructor
Cocina(){
 ImgFondo = loadImage("cocina.2.0.png");
}
//dibujo de clase
  void dibujarCocina() {
    image(ImgFondo, 0, 0, width, height);
  }
}
