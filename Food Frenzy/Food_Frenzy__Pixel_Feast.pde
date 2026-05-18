//constructores
GamerEmma GamerEmma;
Cocina Cocina;
void setup() {
  size(600, 600);
  Cocina = new Cocina();
  GamerEmma = new GamerEmma();
}
void draw() {
  Cocina.dibujarCocina();
  GamerEmma.dibujarEmmaUno();
  GamerEmma.movimientoEmma();
}
