//Contructores de Clases
PFont fuenteArcade;
Gamer Emma;
Cocinero Michello;
Fondos Fondo;
Comidas Comida;
Botones Boton;

void setup() {
  size(600, 600);
  frameRate(10);       // 10 FPS para lograr el feel retro pixel-art
  noSmooth();          // Sin antialiasing: los sprites se ven bien cuadraditos
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  fuenteArcade = createFont("ARCADECLASSIC.TTF", 32);
  // Se instancian todos los objetos del juego
  Fondo = new Fondos();
  Emma = new Gamer();
  Michello = new Cocinero();
  Comida = new Comidas();
  Boton = new Botones();
}

void draw() {
  // Máquina de estados: cada número corresponde a una pantalla o fase distinta
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
  case 3: //Juego - Cocina: Michello cocina y lleva la comida a la puerta
    Fondo.mostrarCocina();
    Michello.moverCocinero();
    Comida.sostenerComida();            // Detecta si Michello agarró la comida
    Comida.actualizarPosicionEnMano(); // Pega la comida a la posición de la mano
    Comida.dibujarComidaCruda();
    Comida.dibujarComidaCocida();
    Comida.revisarPuerta();   // Si llega a la puerta con comida cocida, pasa a fase 2
    Comida.depositarHorno();  // Presionar E cerca del horno mete la comida
    Comida.actualizarHorno(); // Cuenta el tiempo de cocción
    Comida.retirarHorno();    // Retira la comida cuando ya está lista
    Michello.mostrarCocinero();
    break;
  case 4: //Juego - Habitación: Emma atrapa la comida que cae del cielo
    Fondo.mostrarHabitacion();
    Emma.dibujarGamer();
    Emma.moverGamer();
    Comida.dibujarComidaCocida();
    Comida.caerComidacCa();  // La carne cae desde arriba
    Comida.caerComidacoPa(); // Las papas caen desde arriba
    Comida.caerComidacoPo(); // El pollo cae desde arriba
    Comida.colisionComida(); // Revisa si Emma atrapó alguna comida
    break;
  case 5: //Pantalla de Victoria
    Fondo.PVictoria();
    break;
  case 6: //Pantalla de Derrota
    Fondo.mostrarPDerrota();
    break;
  }
}
