//constructores
GamerEmma GamerEmma;
Cocinero rubioCocinero;
Estados Estados;
Comida Comida;

void setup() {
  size(600, 600);
  Estados = new Estados();
  GamerEmma = new GamerEmma();
  rubioCocinero = new Cocinero();
  Comida = new Comida();
}
void draw() {
  switch(Estados.estado) {
  case 0;
    Estados.Inicio();
    break;
    Estados.Cocina();
    rubioCocinero.displayCocinero();
    rubioCocinero.moveCocinero();
    Comida.dibujarComidacruda();
    Comida.sostenercomidac();
    Comida.sostenercomidapa();
    Comida.sostenercomidapo();
    GamerEmma.dibujarEmmaUno();
    GamerEmma.movimientoEmma();
  }
}
