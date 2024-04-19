class Asteoriode{
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  private float altura;
  private float ancho;

  
  public Asteoriode(PVector posicion,PVector velocidad){
    this.ancho=100;
    this.altura=100;
    this.posicion=posicion;
    this.velocidad=velocidad;
    imagen=loadImage("asteroide.png");
  }
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,ancho,altura);
  }
  public void caer(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      float x=random(1,4);
      this.posicion.y=0;
      this.altura=100*x;
      this.ancho=100*x;
      this.posicion.x=random(0,width);
      this.velocidad.y=random(8,20);
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
