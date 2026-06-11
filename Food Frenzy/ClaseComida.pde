class Comidas {
  int xpo, ypo, xpa, ypa, xc, yc, vel, tam, comidas;
  int hx1, hx2, hy, tiempoHorno, tiempoCoccion;
  boolean comidaCruda, comidaCocida, hayComidaEnHorno, comidaLista;
  PImage ImgCarnec, ImgPapasc, ImgPolloc;
  PImage ImgCarneco, ImgPapasco, ImgPolloco;

  Comidas() {
    hx1 = 300;
    hx2 = 600;
    hy = 165;
    tam = 40;
    xpo = 240;
    xpa = 290;
    xc = 335;
    ypo = 500;
    ypa = 500;
    yc = 500;
    tiempoHorno = millis();
    tiempoCoccion = 2000;
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

  // Centraliza la posición de la comida en mano, según dirección
  void actualizarPosicionEnMano() {
    if (Michello.llevandoPlato) {
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

  // Chequeo de la puerta separado de "dibujar"
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
    if (cercaHorno && Michello.llevandoPlato && !hayComidaEnHorno && keyPressed && key == 'e') {
      hayComidaEnHorno = true;
      comidaLista = false;
      tiempoHorno = millis();
      Michello.llevandoPlato = false;
      xc  = -200; yc  = -200;
      xpa = -200; ypa = -200;
      xpo = -200; ypo = -200;
    }
  }

  void actualizarHorno() {
    if (hayComidaEnHorno && !comidaLista) {
      if (millis() - tiempoHorno >= tiempoCoccion) {
        comidaLista = true;
      }
    }
  }

  void retirarHorno() {
    boolean cercaHorno = (Michello.x >= hx1 && Michello.y <= hy && Michello.x <= hx2);

    if (cercaHorno && comidaLista && !Michello.llevandoPlato) {
      xc  = Michello.x + 15; yc  = Michello.y;
      xpa = Michello.x + 15; ypa = Michello.y - 10;
      xpo = Michello.x + 15; ypo = Michello.y - 20;

      comidaCruda = false;
      hayComidaEnHorno = false;
      comidaLista = false;
      Michello.llevandoPlato = true;
    }
  }

  void caerComidacCa() {
    yc += vel;
    if (yc > 600 || yc < 0) {
      xc = int(random(0, 550));
      yc = -40;
    }
  }

  void caerComidacoPa() {
    ypa += vel;
    if (ypa > 600 || ypa < 0) {
      xpa = int(random(0, 550));
      ypa = -40;
    }
  }

  void caerComidacoPo() {
    ypo += vel;
    if (ypo > 600 || ypo < 0) {
      xpo = int(random(0, 550));
      ypo = -40;
    }
  }

  boolean colisionComida() {
    boolean huboColision = false;

    if (dist(Emma.x, Emma.y, xpo, ypo) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xpo = -200; ypo = -200;
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
