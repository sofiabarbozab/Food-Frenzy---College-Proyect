//constructores
GamerEmma GamerEmma;
Cocina Cocina;
void setup() {
  size(600, 600);
  background(0);
  Cocina = new Cocina();
  GamerEmma = new GamerEmma();
}
void draw() {
  Cocina.dibujarCocina();
  GamerEmma.dibujarEmmaUno();
  GamerEmma.movimientoEmma();
}
