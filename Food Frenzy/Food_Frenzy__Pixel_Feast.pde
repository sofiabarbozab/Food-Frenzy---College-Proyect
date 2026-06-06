//Contructores de Clases
Gamer Emma;
Cocinero Michello;
Fondos Fondo;
Comidas Comida;
Botones Boton;

void setup() {
  size(600, 600);
  imageMode(CENTER);
  textAlign(CENTER);
  Fondo = new Fondos();
  Emma = new Gamer();
  Michello = new Cocinero();
  Comida = new Comidas();
  Boton = new Botones();
}
void draw() {
  switch(Fondo.estado) {
  case 0: //Pantalla de Inicio
    Fondo.mostrarPInicio();
    Boton.botonJugar();
    Boton.botonHistoria();
    Boton.botonInstrucciones();
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
