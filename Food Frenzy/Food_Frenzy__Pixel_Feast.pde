//constructores
GamerEmma GamerEmma;
Cocinero EmoCocinero;
Cocina Cocina;
Comida Comida;
void setup() {
  size(600, 600);
  Cocina = new Cocina();
  GamerEmma = new GamerEmma();
  EmoCocinero = new Cocinero();
  Comida = new Comida();
}
void draw() {
  Cocina.dibujarCocina();
  GamerEmma.dibujarEmmaUno();
  EmoCocinero.displayCocinero();
  GamerEmma.movimientoEmma();
  EmoCocinero.moveCocinero();
  Comida.dibujarComidacruda();
  Comida.agarrarcomidac();
  Comida.agarrarcomidapa();
  Comida.agarrarcomidapo();

}
