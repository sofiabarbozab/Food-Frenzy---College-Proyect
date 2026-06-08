class Temporizador {
  int duracionMs, TInicio;
  boolean corriendo;
  
  Temporizador(int segundos){
    duracionMs = segundos * 1000;
    corriendo = false;
  }
  
  void iniciar(){
    TInicio = millis();
    corriendo = true;
  }
  
  void reiniciar(){
    iniciar();
  }
  
  
}
