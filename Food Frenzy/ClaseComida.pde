class Comidas {
  int xpo, ypo, xpa, ypa, xc, yc;
  boolean comidaCruda, comidaCocida;
  PImage ImgCarnec;
  PImage ImgPapasc;
  PImage ImgPolloc;
  PImage ImgCarneco;
  PImage ImgPapasco;
  PImage ImgPolloco;
  Comidas() {
    xpo = 190;
    xpa = 240;
    xc = 290;
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
    image(ImgCarnec, xc, yc, 60, 60);
    image(ImgPapasc, xpa, ypa, 60, 60);
    image(ImgPolloc, xpo, ypo, 60, 60);
    comidaCruda = true;
  }

  void dibujarComidacocida() {
    image(ImgCarneco, xc, yc, 60, 60);
    image(ImgPapasco, xpa, ypa, 60, 60);
    image(ImgPolloco, xpo, ypo, 60, 60);
    comidaCocida = true;
  }
}
