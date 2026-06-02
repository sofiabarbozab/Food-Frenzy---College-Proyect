class Comida {
  int x;
  int y;
  PImage ImgCarnec;
  PImage ImgPapasc;
  PImage ImgPolloc;
  PImage ImgCarneco;
  PImage ImgPapasco;
  PImage ImgPolloco;
  Comida() {
    ImgCarnec = loadImage("carneCruda.png");
    ImgPapasc = loadImage("papasCrudas.png");
    ImgPolloc = loadImage("polloCrudo.png");
    ImgCarneco = loadImage("carneCocida.png");
    ImgPapasco = loadImage("papasCocidas.png");
    ImgPolloco = loadImage("polloCocido.png");
  }

/*  void agarrarcomida() {
    if(x <68, y < 68){}

  }*/
  void dibujarComidacruda() {
    image(ImgCarnec, x + 290, y +530, 60, 60);
    image(ImgPapasc, x + 240, y +530, 60, 60);
    image(ImgPolloc, x + 190, y +530, 60, 60);
  }

  void dibujarComidacocida() {
    image(ImgCarneco, x + 130, y +530, 60, 60);
    image(ImgPapasco, x + 130, y +530, 60, 60);
    image(ImgPolloco, x + 130, y +530, 60, 60);
  }
}
