class Enemigo{
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  
  public Enemigo(){
    imagen= loadImage("naveEnemiga.png");
  }
  public void dibujar(){
    translate(this.posicion.x,this.posicion.y);
    imageMode(CENTER);
    rotate(PI);
    image(imagen,0,0,300,200);
  }
  public void mover(){
    this.posicion.x+=this.velocidad.x;
    if(this.posicion.x+75>=width || this.posicion.x-75<=0){
      this.velocidad.x*=-1;
    }
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
