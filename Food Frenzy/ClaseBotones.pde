class Botones{
  PImage botonPlay, botonHistoria, botonInstrucciones;
  int x,y,tam;
  
  Botones(){
    botonPlay = loadImage("botonPlay.png");
    botonHistoria = loadImage("botonHistoria.png");
    botonInstrucciones = loadImage("botonInstrucciones.png");
    x = width/2;
    y = 530;
    tam = 80;
  }
  
  void botonPlay(){
    image(botonPlay,x,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x,y) <= tam/2){
      Fondo.estado = 3;
    }
  }
  
  void botonHistoria(){
    image(botonHistoria,x,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x,y) <= tam/2){
      Fondo.estado = 2;
    }
  }
}
