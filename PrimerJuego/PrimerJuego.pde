private Escenario fondo;
private Shooter jugador;
private Enemigo enemy;
private Base suelo;
private Asteoriode roca;

void setup(){
  size(800,600);
  fondo = new Escenario();
  jugador = new Shooter();
  enemy =new Enemigo();
  suelo = new Base(color(0,0,255),color(0,0,0));
  roca = new Asteoriode(new PVector(width/2,0),new PVector(0,10));
  jugador.setPosicion(new PVector(width/2,height*4/5));
  jugador.setVelocidad(new PVector(10,0));
  enemy.setPosicion(new PVector(width/2,height*1/5));
  enemy.setVelocidad(new PVector(5,0));
  suelo.setPosicion(new PVector(0,height*7/8));

}
void draw(){
  fondo.dibujar();
  roca.dibujar();
  roca.caer();
  suelo.dibujar();
  jugador.dibujar();
  enemy.dibujar();
  enemy.mover();
  
}
 /* Movimientos por teclado */
public void keyPressed(){
  if(key=='d'){
    jugador.mover(1);
  }
  if(key=='a'){
    jugador.mover(0);
  }
}
