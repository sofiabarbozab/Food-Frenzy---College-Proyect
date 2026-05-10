PImage ImgFondo;
PImage Imgamer;
PImage ImgCooker;
float PgirlX, PgirlY;
float velocidad = 4.0;

void setup() {
  size(800, 800);
  background(0);
  ImgFondo = loadImage("cocina2.png"); 
  Imgamer = loadImage("purplegirl1.png");
}

void draw(){
image(ImgFondo, 0, 0, width, height);


}
