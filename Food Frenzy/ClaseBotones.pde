class Botones{
  PImage botonPlay, botonHistoria, botonInstrucciones;
  int x,y,tam;
  
  Botones(){
    botonPlay = loadImage("botonPlay.png");
    botonHistoria = loadImage("botonHistoria");
    botonInstrucciones = loadImage("botonInstrucciones");
    x = width/2;
    y = height/2;
    tam = 100;
  }
  
  void botonPlay(){
    image(botonPlay,x,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x,y) <= tam/2){
      Fondo.estado = 3;
    }
  }
}
