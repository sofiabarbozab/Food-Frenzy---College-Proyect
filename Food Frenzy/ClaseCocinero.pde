class Cocinero{
  PImage imgCocinero;
  int x,y,velocidad;
  
  Cocinero(){
    imgCocinero = loadImage("Cocinero_1.png");
    x = width/2;
    y = height/2;
    velocidad =  4;
  }
  
  void displayCocinero(){ //Mostrast al Cocinero.
    image(imgCocinero,x,y,100,100);
  }
  //Función para mover al cocinero.
  void moveCocinero(){
    if (keyPressed && key == CODED && keyCode == LEFT && x > 60 ) {
      x -= velocidad;
    }
    if (keyPressed && key == CODED && keyCode == RIGHT && x < 480 ) {
      x += velocidad;
    }
    if (keyPressed && key == CODED && keyCode == UP && y > 0 ) {
      y -= velocidad;
    }
    if (keyPressed && key == CODED && keyCode == DOWN && y < 448 ) {
      y += velocidad;
    }
  }
}
