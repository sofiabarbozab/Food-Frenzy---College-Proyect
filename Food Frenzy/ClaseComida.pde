class Comida {
  int xpo, ypo, xpa, ypa, xc, yc;
  boolean comidaCruda, comidaCocida;
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

  void sostenercomidapa() {
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y, xpa, ypa) < 100) {
      xpa = rubioCocinero.x+15;
      ypa = rubioCocinero.y+20;
    }
    
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y,149,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,149,94) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,94) == 0){
      
    }
  }

  void sostenercomidac() {
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y, xc, yc) < 100) {
      xc = rubioCocinero.x+15;
      yc = rubioCocinero.y+30;
    }
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y,149,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,149,94) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,94) == 0){
      
    }
  }

  void sostenercomidapo() {
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y, xpo, ypo) < 100) {
      xpo = rubioCocinero.x+15;
      ypo = rubioCocinero.y+10;
    }
    
    if (comidaCruda == true && dist(rubioCocinero.x, rubioCocinero.y,149,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,0) == 0 || dist(rubioCocinero.x, rubioCocinero.y,149,94) == 0 || dist(rubioCocinero.x, rubioCocinero.y,225,94) == 0){
      
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
