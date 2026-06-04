class Fondos {
  int estado;
  PImage imgPInicio, imgInstrucciones, imgHistoria, imgCocina, imgHabitacion, imgPVictoria, imgPDerrota;
  
  Fondos(){
    estado = 0;
    imgPInicio = loadImage("pInicio.png");
    imgInstrucciones = loadImage("");
    imgHistoria = loadImage("");
    imgCocina = loadImage("cocina.png");
    imgHabitacion = loadImage("habitacion.pmg");
    imgPVictoria = loadImage("");
    imgPDerrota = loadImage("pDerrota.png");
  }
  
  void mostrarPInicio(){ //Mostrar pantalla de Inicio
    image(imgPInicio,0,0, 600,600);
  }
  
  void mostrarInstrucciones(){ //Mostrar pantalla de Instrucciones
    image(imgInstrucciones,0,0,600,600);
  }
  
  void mostrarHistoria(){ //Mostrar pantalla de Historia
    image(imgHistoria,0,0,600,600);
  }
  
  void mostrarCocina(){ //Mostrar fondo de Cocina
    image(imgCocina,0,0,600,600);
  }
  
  void mostrarHabitacion(){ //Mostrar fondo de Habitación
    image(imgHabitacion,0,0,600,600);
  }
  
  void mostrarPVictoria(){ //Mostrar pantalla de Victoria
    image(imgPVictoria,0,0,600,600);
  }
  
  void mostrarPDerrota(){ //Mostrar pantalla de Derrota
    image(imgPDerrota,0,0,600,600);
  } 
}
