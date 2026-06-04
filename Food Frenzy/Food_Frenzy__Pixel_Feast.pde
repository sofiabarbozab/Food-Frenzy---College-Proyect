//constructores
GamerEmma GamerEmma;
Cocinero rubioCocinero;
Fondos Fondo;
Comida Comida;

void setup() {
  size(600, 600);
  Fondo = new Fondos();
  GamerEmma = new GamerEmma();
  rubioCocinero = new Cocinero();
  Comida = new Comida();
}
void draw() {
  switch(Fondo.estado) {
  case 0: //Pantalla de Inicio
    Fondo.mostrarPInicio();
    break;
  case 1: //Menú de Instrucciones
    Fondo.mostrarInstrucciones();
    break;
  case 2: //Pantalla de Historia
    Fondo.mostrarHistoria();
    break;
  case 3: //Juego - Cocina
    Fondo.mostrarCocina();
    break;
  case 4: //Jugao - Habitación
    Fondo.mostrarHabitacion();
    break;
  case 5: //Pantalla de Victoria
    Fondo.mostrarPVictoria();
    break;
  case 6: //Pantalla de Derrota
    Fondo.mostrarPDerrota();
    break;
  }
}
