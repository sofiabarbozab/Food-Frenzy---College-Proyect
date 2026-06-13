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
  
  void botonJugar(){ // Muestra el botón y al hacer click va al juego (estado 3)
    image(botonJugar,x,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x,y) <= tam/2){
      Fondo.estado = 3;
    }
    // Si el mouse está encima, muestra el nombre en texto arcade amarillo
    if(dist(mouseX,mouseY,x,y) <= tam/2){
      textFont(fuenteArcade);
      textSize(45);
       stroke(0);
      fill(255, 255, 0);
      text("JUGAR",x,580);
    }
  }
  
  void botonHistoria(){ // Muestra el botón y al hacer click va a la historia (estado 2)
    image(botonHistoria,x + tam + 10,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x + tam + 10,y) <= tam/2){
      Fondo.estado = 2;
    }
    if(dist(mouseX,mouseY,x + tam + 10,y) <= tam/2){
      textSize(30);
      stroke(0);
      fill(255,255,0);
      text("HISTORIA",x,580);
    }
  }
  
  void botonInstrucciones(){ // Muestra el botón y al hacer click va a instrucciones (estado 1)
    image(botonInstrucciones,x - tam - 10,y,tam,tam);
    if(mousePressed && dist(mouseX,mouseY,x - tam - 10,y) <= tam/2){
      Fondo.estado = 1;
    }
    if(dist(mouseX,mouseY,x - tam - 10,y) <= tam/2){
      textSize(30);
       stroke(0);
      fill(255,255,0);
      text("INSTRUCCIONES",x,580);
    }
  }
}
