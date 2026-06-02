class Comida {
  int xpo, ypo, xpa, ypa, xc, yc;
  PImage ImgCarnec;
  PImage ImgPapasc;
  PImage ImgPolloc;
  PImage ImgCarneco;
  PImage ImgPapasco;
  PImage ImgPolloco;
  Comida() {
    xpo = 190;
    xpa = 240;
    xc = 290;
    ypo = 530;
    ypa = 530;
    yc = 530;
    ImgCarnec = loadImage("carneCruda.png");
    ImgPapasc = loadImage("papasCrudas.png");
    ImgPolloc = loadImage("polloCrudo.png");
    ImgCarneco = loadImage("carneCocida.png");
    ImgPapasco = loadImage("papasCocidas.png");
    ImgPolloco = loadImage("polloCocido.png");
  }

  void agarrarcomidapa() {
    if (dist(EmoCocinero.x, EmoCocinero.y, xpa, ypa) < 100) {
      xpa = EmoCocinero.x+15;
      ypa = EmoCocinero.y+20;
    }
  }

  void agarrarcomidac() {
    if (dist(EmoCocinero.x, EmoCocinero.y, xc, yc) < 100) {
      xc = EmoCocinero.x+15;
      yc = EmoCocinero.y+30;
    }
  }

  void agarrarcomidapo() {
    if (dist(EmoCocinero.x, EmoCocinero.y, xpo, ypo) < 100) {
      xpo = EmoCocinero.x+15;
      ypo = EmoCocinero.y+10;
    }
  }

  void dibujarComidacruda() {
    image(ImgCarnec, xc, yc, 60, 60);
    image(ImgPapasc, xpa, ypa, 60, 60);
    image(ImgPolloc, xpo, ypo, 60, 60);
  }

  void dibujarComidacocida() {
    image(ImgCarneco, xc, yc, 60, 60);
    image(ImgPapasco, xpa, ypa, 60, 60);
    image(ImgPolloco, xpo, ypo, 60, 60);
  }
}
