class Enemigo{
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  
  /* CONSTRUCTOR*/
  public Enemigo(){
    imagen= loadImage("naveEnemiga.png");
  }
  /*Dibuja la nave enemiga con un giro de 180 grados*/
  public void dibujar(){
    translate(this.posicion.x,this.posicion.y);//altera el punto de origen que se usa como referencia al dibujar
    imageMode(CENTER);
    rotate(PI);
    image(imagen,0,0,300,200);
  }
  /* Mueve la nave horizontalmente rebotando con el marco sin salirse*/
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
