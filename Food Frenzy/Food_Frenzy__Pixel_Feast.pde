//constructores
GamerEmma GamerEmma;
Cocina Cocina;
Comida Comida;
void setup() {
  size(600, 600);
  Cocina = new Cocina();
  GamerEmma = new GamerEmma();
  Comida = new Comida();
}
void draw() {
  Cocina.dibujarCocina();
  GamerEmma.dibujarEmmaUno();
  GamerEmma.movimientoEmma();
  Comida.dibujarComidacruda();
}
