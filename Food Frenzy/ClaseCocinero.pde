class Cocinero{
  PImage imgCocinero;
  int x,y,velocidad;
  
  Cocinero(){
    imgCocinero = loadImage("Cocinero_1.png");
    x = width/2;
    y = height/2;
    velocidad =  4;
  }
  
  void mostrarCocinero(){ //Función que muestra al Cocinero
    image(imgCocinero,x,y,100,100);
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
