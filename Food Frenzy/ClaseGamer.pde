class Gamer {
  PImage ImgGamer;
  int x,y,velocidad,comidas,vidas;

  //constructor.
  Gamer() {
    ImgGamer = loadImage("gamer-estadoUno.png");
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
