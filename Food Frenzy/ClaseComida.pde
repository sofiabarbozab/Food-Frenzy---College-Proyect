class Comidas {
  // Posiciones de cada comida: po=pollo, pa=papas, c=carne
  int xpo, ypo, xpa, ypa, xc, yc, vel, tam, comidas;
  int hx1, hx2, hy, tiempoHorno, tiempoCoccion; // Datos del horno
  boolean comidaCruda, comidaCocida, hayComidaEnHorno, comidaLista;
  // Sprites crudos y cocidos de cada alimento
  PImage ImgCarnec, ImgPapasc, ImgPolloc;
  PImage ImgCarneco, ImgPapasco, ImgPolloco;

  Comidas() {
    // Zona del horno (rango X y altura Y)
    hx1 = 300;
    hx2 = 600;
    hy = 165;
    tam = 40;
    // Posiciones iniciales de cada comida en la cocina
    xpo = 240;
    xpa = 290;
    xc = 335;
    ypo = 500;
    ypa = 500;
    yc = 500;
    tiempoHorno = millis();
    tiempoCoccion = 2000; // 2 segundos de cocción
    comidaLista = false;
    hayComidaEnHorno = false;
    comidaCruda = true;

    ImgCarnec = loadImage("carneCruda.png");
    ImgPapasc = loadImage("papasCrudas.png");
    ImgPolloc = loadImage("polloCrudo.png");
    ImgCarneco = loadImage("carneCocida.png");
    ImgPapasco = loadImage("papasCocidas.png");
    ImgPolloco = loadImage("polloCocido.png");
  }

  void sostenerComida() {
    // Si Michello no lleva nada y se acerca a alguna comida, la levanta
    if (!Michello.llevandoPlato) {
      if (dist(Michello.x, Michello.y, xpa, ypa) < 100) {
        Michello.llevandoPlato = true;
      }
      if (dist(Michello.x, Michello.y, xc, yc) < 100) {
        Michello.llevandoPlato = true;
      }
      if (dist(Michello.x, Michello.y, xpo, ypo) < 100) {
        Michello.llevandoPlato = true;
      }
    }
  }

  // Mantiene la comida pegada a la mano del cocinero mientras la lleva
  void actualizarPosicionEnMano() {
    if (Michello.llevandoPlato) {
      // El offset en X cambia según si mira a la izquierda o no
      int offsetX = (Michello.direccion == 1) ? -35 : 15;
      xc  = Michello.x + offsetX; yc  = Michello.y;
      xpa = Michello.x + offsetX; ypa = Michello.y - 10;
      xpo = Michello.x + offsetX; ypo = Michello.y - 20;
    }
  }

  void dibujarComidaCruda() {
    if (comidaCruda) {
      image(ImgCarnec, xc, yc, 40, 40);
      image(ImgPapasc, xpa, ypa, 40, 40);
      image(ImgPolloc, xpo, ypo, 40, 40);
    }
  }

  void dibujarComidaCocida() {
    if (!comidaCruda) {
      image(ImgCarneco, xc, yc, 40, 40);
      image(ImgPapasco, xpa, ypa, 40, 40);
      image(ImgPolloco, xpo, ypo, 40, 40);
    }
  }

  // Revisa si alguna comida cocida llegó a la zona de la puerta → pasa a fase 2
  void revisarPuerta() {
    boolean carneEnPuerta = (xc  >= 105 && xc  <= 115 && yc  >= 274 && yc  <= 342);
    boolean papasEnPuerta = (xpa >= 105 && xpa <= 115 && ypa >= 274 && ypa <= 342);
    boolean polloEnPuerta = (xpo >= 105 && xpo <= 115 && ypo >= 274 && ypo <= 342);

    if (!comidaCruda && (carneEnPuerta || papasEnPuerta || polloEnPuerta)) {
      Fondo.estado = 4;
    }
  }

  void depositarHorno() {
    boolean cercaHorno = (Michello.x >= hx1 && Michello.y <= hy && Michello.x <= hx2);
    // Solo mete la comida si: está cerca, lleva algo, el horno está libre y presiona E
    if (cercaHorno && Michello.llevandoPlato && !hayComidaEnHorno && keyPressed && key == 'e') {
      hayComidaEnHorno = true;
      comidaLista = false;
      tiempoHorno = millis(); // Arranca el temporizador de cocción
      Michello.llevandoPlato = false;
      // Manda la comida fuera de pantalla para que "desaparezca"
      xc  = -200; yc  = -200;
      xpa = -200; ypa = -200;
      xpo = -200; ypo = -200;
    }
  }

  void actualizarHorno() {
    // Cuando pasa el tiempo de cocción, marca la comida como lista
    if (hayComidaEnHorno && !comidaLista) {
      if (millis() - tiempoHorno >= tiempoCoccion) {
        comidaLista = true;
      }
    }
  }

  void retirarHorno() {
    boolean cercaHorno = (Michello.x >= hx1 && Michello.y <= hy && Michello.x <= hx2);

    // Si la comida está lista y Michello llega sin llevar nada, la retira automáticamente
    if (cercaHorno && comidaLista && !Michello.llevandoPlato) {
      xc  = Michello.x + 15; yc  = Michello.y;
      xpa = Michello.x + 15; ypa = Michello.y - 10;
      xpo = Michello.x + 15; ypo = Michello.y - 20;

      comidaCruda = false;      // Ahora se dibuja el sprite cocido
      hayComidaEnHorno = false;
      comidaLista = false;
      Michello.llevandoPlato = true;
    }
  }

  void caerComidacCa() {
    xc = int(random(0, 550)); // X aleatoria en toda la pantalla
    yc = -40;                 // Arranca fuera de pantalla, arriba
    int destinoY = int(random(237, 417)); // Altura de aterrizaje (guardada UNA vez)
    while (yc <= destinoY) {
      yc += vel;
    }
  }

  void caerComidacoPa() {
    xpa = int(random(0, 550));
    ypa = -40;
    int destinoY = int(random(237, 417));
    while (ypa <= destinoY) {
      ypa += vel;
    }
  }

  void caerComidacoPo() {
    xpo = int(random(0, 550));
    ypo = -40;
    int destinoY = int(random(237, 417));
    while (ypo <= destinoY) {
      ypo += vel;
    }
  }

  boolean colisionComida() {
    boolean huboColision = false;

    // Colisión basada en distancia entre centro de Emma y centro de cada comida
    if (dist(Emma.x, Emma.y, xpo, ypo) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xpo = -200; ypo = -200; // Saca la comida de pantalla al atraparla
      huboColision = true;
    }
    if (dist(Emma.x, Emma.y, xpa, ypa) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xpa = -200; ypa = -200;
      huboColision = true;
    }
    if (dist(Emma.x, Emma.y, xc, yc) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xc = -200; yc = -200;
      huboColision = true;
    }

    return huboColision;
  }
}
