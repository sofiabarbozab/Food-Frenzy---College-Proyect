//Contructores de Clases
PFont fuenteArcade;
Gamer Emma;
Cocinero Michello;
Fondos Fondo;
Comidas Comida;
Botones Boton;
Temporizador Tempo;


void setup() {
  size(600, 600);
  frameRate(10);
  noSmooth();
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  fuenteArcade = createFont("ARCADECLASSIC.TTF", 32);
  Fondo = new Fondos();
  Emma = new Gamer();
  Michello = new Cocinero();
  Comida = new Comidas();
  Boton = new Botones();
  Tempo = new Temporizador(30);
  Tempo = new Temporizador(2);
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
    Boton.botonJugar();
    break;
  case 2: //Pantalla de Historia
    Fondo.mostrarHistoria();
    Boton.botonJugar();
    break;
  case 3: //Juego - Cocina
    Fondo.mostrarCocina();
    Michello.mostrarCocinero();
    Michello.moverCocinero();
    Comida.dibujarComidaCruda();
    Comida.sostenerComida();
    Comida.depositarHorno();
    Comida.actualizarHorno();
    break;
  case 4: //Juego - Habitación
    Fondo.mostrarHabitacion();
    Emma.dibujarGamer();
    Emma.moverGamer();
    break;
  case 5: //Pantalla de Victoria
    Fondo.PVictoria();
    break;
  case 6: //Pantalla de Derrota
    Fondo.mostrarPDerrota();
    break;
  }
}
