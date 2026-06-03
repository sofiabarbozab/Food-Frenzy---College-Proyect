//constructores
GamerEmma GamerEmma;
Cocinero rubioCocinero;
Cocina Cocina;
Comida Comida;
void setup() {
  size(600, 600);
  Cocina = new Cocina();
  GamerEmma = new GamerEmma();
  rubioCocinero = new Cocinero();
  Comida = new Comida();
}
void draw() {
  Cocina.dibujarCocina();
  GamerEmma.dibujarEmmaUno();
  rubioCocinero.displayCocinero();
  GamerEmma.movimientoEmma();
  rubioCocinero.moveCocinero();
  Comida.dibujarComidacruda();
  Comida.sostenercomidac();
  Comida.sostenercomidapa();
  Comida.sostenercomidapo();
}
