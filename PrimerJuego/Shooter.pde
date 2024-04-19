class Shooter{
    private PVector posicion;
    private PImage imagen;
    private PVector velocidad;
  public Shooter(){
     imagen = loadImage("nave.png");
  }
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,120,120);
  }
  public void mover(int direccion){
    if(direccion==1 && this.posicion.x<width){
      this.posicion.x+=this.velocidad.x;
    }
    if(direccion==0 && this.posicion.x>0){
      this.posicion.x-=this.velocidad.x;
    }
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
   public PVector getVelocidad(){
    return this.velocidad;
  }
}
