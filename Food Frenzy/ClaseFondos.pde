class Fondos {
  int estado;
  PImage imgPInicio, imgInstrucciones, imgHistoria, imgCocina, imgHabitacion, imgPVictoria, imgPDerrota;
  
  Fondos(){
    estado = 0;
    imgPInicio = loadImage("pInicio.png");
    imgInstrucciones = loadImage("instruccionesPrueba.png"); // Hay que hacer la imagen de Instrucciones
    imgHistoria = loadImage("historiaPrueba.png"); // Hay que hacer la imagen de Historia
    imgCocina = loadImage("cocina2.png");
    imgHabitacion = loadImage("habitacion2.png");
    imgPVictoria = loadImage("victoriaPrueba.png"); // Hay que hacer la imagen de Pantalla de Victoria
    imgPDerrota = loadImage("pDerrota.png");
  }
  
  void mostrarPInicio(){ //Mostrar pantalla de Inicio
    image(imgPInicio,width/2,height/2, 600,600);
  }
  
  void mostrarInstrucciones(){ //Mostrar pantalla de Instrucciones
    image(imgInstrucciones,width/2,height/2,600,600);
  }
  
  void mostrarHistoria(){ //Mostrar pantalla de Historia
    image(imgHistoria,width/2,height/2,600,600);
  }
  
  void mostrarCocina(){ //Mostrar fondo de Cocina
    image(imgCocina,width/2,height/2,600,600);
  }
  
  void mostrarHabitacion(){ //Mostrar fondo de Habitación
    image(imgHabitacion,width/2,height/2,600,600);
  }
  
  void mostrarPVictoria(){ //Mostrar pantalla de Victoria
    image(imgPVictoria,width/2,height/2,600,600);
  }
  
  void mostrarPDerrota(){ //Mostrar pantalla de Derrota
    image(imgPDerrota,width/2,height/2,600,600);
  } 
}
