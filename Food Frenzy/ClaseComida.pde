class Comidas {
  int xpo, ypo, xpa, ypa, xc, yc, vel, tam, comidas;
  boolean comidaCruda, comidaCocida, colisionComida;
  PImage ImgCarnec;
  PImage ImgPapasc;
  PImage ImgPolloc;
  PImage ImgCarneco;
  PImage ImgPapasco;
  PImage ImgPolloco;
  Comidas() {
    tam = 40;
    xpo = 240;
    xpa = 290;
    xc = 335;
    ypo = 500;
    ypa = 500;
    yc = 500;
    ImgCarnec = loadImage("carneCruda.png");
    ImgPapasc = loadImage("papasCrudas.png");
    ImgPolloc = loadImage("polloCrudo.png");
    ImgCarneco = loadImage("carneCocida.png");
    ImgPapasco = loadImage("papasCocidas.png");
    ImgPolloco = loadImage("polloCocido.png");
  }

  void sostenercomidapa() {
    if (comidaCruda == true && dist(Michello.x, Michello.y, xpa, ypa) < 100) {
      xpa = Michello.x+15;
      ypa = Michello.y+20;
    }
  }

  void sostenercomidac() {
    if (comidaCruda == true && dist(Michello.x, Michello.y, xc, yc) < 100) {
      xc = Michello.x+15;
      yc = Michello.y+30;
    }
  }

  void sostenercomidapo() {
    if (comidaCruda == true && dist(Michello.x, Michello.y, xpo, ypo) < 100) {
      xpo = Michello.x+15;
      ypo = Michello.y+10;
    }
  }



  void dibujarComidacruda() {
    image(ImgCarnec, xc, yc, 40, 40);
    image(ImgPapasc, xpa, ypa, 40, 40);
    image(ImgPolloc, xpo, ypo, 40, 40);
    comidaCruda = true;
  }

  void dibujarComidacocida() {
    image(ImgCarneco, xc, yc, 40, 40);
    image(ImgPapasco, xpa, ypa, 40, 40);
    image(ImgPolloco, xpo, ypo, 40, 40);
    comidaCocida = true;

    if (colisionComida == true) {
    }
  }



  void caerComidacCa() {
    if (yc > 600) {
      yc =+ vel;
      xc = int(random(0, 550));
      yc = -40;
    }
  }
  void caerComidacoPa() {
    if (ypa > 600) {
      ypa =+ vel;
      xpa = int(random(0, 550));
      ypa = -40;
    }
  }

  void caerComidacoPo() {
    if (ypo > 600) {
      ypo =+ vel;
      xpo= int(random(0, 550));
      ypo = -40;
    }
  }


  boolean colisionComida(int xpo, int ypo, int tam) {

    if (dist(Emma.x, Emma.y, xpo, ypo) < (Emma.tam/2) + (tam/2)) {

      comidas ++;
      return true;
    }

    if (dist(Emma.x, Emma.y, xpa, ypa) < (Emma.tam/2) + (tam/2)) {

      comidas ++;
      return true;
    }
    if (dist(Emma.x, Emma.y, xc, yc) < (Emma.tam/2) + (tam/2)) {

      comidas ++;
      return true;
    }

    return false;
  }
}
