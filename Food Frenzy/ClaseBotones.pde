class Botones{
  PImage botonJugar, botonHistoria, botonInstrucciones;
  int x,y,tam;
  
  Botones(){
    botonJugar = loadImage("botonJugar.png");
    botonHistoria = loadImage("botonHistoria.png");
    botonInstrucciones = loadImage("botonInstrucciones.png");
    x = width/2;
    y = 530;
    tam = 78;
  }
  
  void botonJugar(){ // Función que muestra y pone en funcionamiento al botón de Jugar
    image(botonJugar,x,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x,y) <= tam/2){
      Fondo.estado = 3;
    }
    if(dist(mouseX,mouseY,x,y) <= tam/2){
      textSize(30);
      fill(0,255,0);
      text("JUGAR",x,580);
    }
  }
  
  void botonHistoria(){ // Función que muestra y pone en funcionamiento al botón de Historia
    image(botonHistoria,x + tam + 10,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x + tam + 10,y) <= tam/2){
      Fondo.estado = 2;
    }
    if(dist(mouseX,mouseY,x + tam + 10,y) <= tam/2){
      textSize(30);
      fill(0,255,0);
      text("HISTORIA",x,580);
    }
  }
  
  void botonInstrucciones(){ // Función que muestra y pone en funcionamiento al botón de Instrucciones
    image(botonInstrucciones,x - tam - 10,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x - tam - 10,y) <= tam/2){
      Fondo.estado = 1;
    }
    if(dist(mouseX,mouseY,x - tam - 10,y) <= tam/2){
      textSize(30);
      fill(0,255,0);
      text("INSTRUCCIONES",x,580);
    }
  }
}
