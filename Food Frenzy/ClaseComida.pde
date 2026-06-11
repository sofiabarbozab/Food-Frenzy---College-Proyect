class Comidas {
  int xpo, ypo, xpa, ypa, xc, yc, vel, tam, comidas;
  int hx1, hx2, hy, tiempoHorno, tiempoCoccion;
  boolean comidaCruda,colisionComida, hayComidaEnHorno, comidaLista;
  PImage ImgCarnec;
  PImage ImgPapasc;
  PImage ImgPolloc;
  PImage ImgCarneco;
  PImage ImgPapasco;
  PImage ImgPolloco;
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
    tiempoHorno = 0;
    tiempoCoccion = 180;
    comidaLista = false;
    hayComidaEnHorno = false;
    comidaCruda =true;
    ImgCarnec = loadImage("carneCruda.png");
    ImgPapasc = loadImage("papasCrudas.png");
    ImgPolloc = loadImage("polloCrudo.png");
    ImgCarneco = loadImage("carneCocida.png");
    ImgPapasco = loadImage("papasCocidas.png");
    ImgPolloco = loadImage("polloCocido.png");
  }

  void sostenerComida() {
    if (dist(Michello.x, Michello.y, xpa, ypa) < 100) {
      xpa = Michello.x+15;
      ypa = Michello.y+20;
      Michello.llevandoPlato = true;
    }
    if (dist(Michello.x, Michello.y, xc, yc) < 100) {
      xc = Michello.x+15;
      yc = Michello.y+30;
      Michello.llevandoPlato = true;
    }
    if (dist(Michello.x, Michello.y, xpo, ypo) < 100) {
      xpo = Michello.x+15;
      ypo = Michello.y+10;
      Michello.llevandoPlato = true;
    }
  }
  
  void dibujarComidaCruda() {
    if(comidaCruda){
      image(ImgCarnec, xc, yc, 40, 40);
      image(ImgPapasc, xpa, ypa, 40, 40);
      image(ImgPolloc, xpo, ypo, 40, 40);
    }
  }

  void dibujarComidaCocida() {
    if (!comidaCruda){
      image(ImgCarneco, xc, yc, 40, 40);
      image(ImgPapasco, xpa, ypa, 40, 40);
      image(ImgPolloco, xpo, ypo, 40, 40);
    }
    if (colisionComida == true) {
    }
  }
  
  void depositarHorno(){
    boolean cercaHorno = (Michello.x >= hx1 && Michello.y <= hy && Michello.x <= hx2);
    if(cercaHorno && Michello.llevandoPlato && !hayComidaEnHorno && keyPressed && key == 'e'){
      hayComidaEnHorno= true;
      comidaLista = false;
      tiempoHorno = frameCount;
      Michello.llevandoPlato = false;
      xc  = -200; yc  = -200;
      xpa = -200; ypa = -200;
      xpo = -200; ypo = -200;
      println("Si");
    }  
  }
  
  void actualizarHorno() {
  if (hayComidaEnHorno && !comidaLista) {
    if (frameCount - tiempoHorno >= tiempoCoccion) {
      comidaLista = true; 
    }
  }
}
  
  void keyPressed(){
    if(key == 'e' && Michello.x <= 521 && Michello.y == 217 && Michello.llevandoPlato == true && comidaCruda == true){
      
    }
  }
  
  void caerComidacCa() {
    yc += vel;

    // Reaparece si salió por abajo O si fue "comida" (está en -200)
    if (yc > 600 || yc < 0) {
      xc = int(random(0, 550));
      yc = -40;  // Entra cayendo desde arriba
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

    // Colisión con pollo
    if (dist(Emma.x, Emma.y, xpo, ypo) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xpo = -200;
      ypo = -200;
      huboColision = true;
    }

    // Colisión con papas
    if (dist(Emma.x, Emma.y, xpa, ypa) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xpa = -200;
      ypa = -200;
      huboColision = true;
    }

    // Colisión con carne
    if (dist(Emma.x, Emma.y, xc, yc) < (Emma.tam / 2) + (tam / 2)) {
      comidas++;
      xc = -200;
      yc = -200;
      huboColision = true;
    }

    return huboColision;
  }
}
