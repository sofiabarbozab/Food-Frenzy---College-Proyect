//Contructores de Clases
PFont fuenteArcade;
Gamer Emma;
Cocinero Michello;
Fondos Fondo;
Comidas Comida;
Botones Boton;

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
    Michello.moverCocinero();
    Comida.sostenerComida();
    Comida.actualizarPosicionEnMano();
    Comida.dibujarComidaCruda();
    Comida.dibujarComidaCocida();
    Comida.revisarPuerta();
    Comida.depositarHorno();
    Comida.actualizarHorno();
    Comida.retirarHorno();
    Michello.mostrarCocinero();
    break;
  case 4: //Juego - Habitación
    Fondo.mostrarHabitacion();
    Emma.dibujarGamer();
    Emma.moverGamer();
    Comida.dibujarComidaCocida();
    Comida.caerComidacCa();
    Comida.caerComidacoPa();
    Comida.caerComidacoPo();
    Comida.colisionComida();
    break;
  case 5: //Pantalla de Victoria
    Fondo.PVictoria();
    break;
  case 6: //Pantalla de Derrota
    Fondo.mostrarPDerrota();
    break;
  }
  println(Comida.comidas);
  println(mouseY);
}
