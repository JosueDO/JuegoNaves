class Base{
  private PVector posicion;
  private color color1= color(0,0,255);
  private color color2= color(0,0,0);
  
  public Base(){
  }
  public void dibujar(){
    float separacionX=width/10/5;
    float separacionY=height/8/5;
    noStroke();
    for(int i=0;i<10;i++){
      if(i%2==0){
        fill(color1);
      }else{
        fill(color2);
      }
      rect(posicion.x+i*width/10,posicion.y,width/10,height/8);
      if(i%2==0){
        fill(color2);
      }else{
        fill(color1);
      }
      rect(separacionX+i*width/10,height*7/8+separacionY,separacionX*3,separacionY*3);
      if(i%2==0){
        fill(color1);
      }else{
        fill(color2);
      }
      rect(separacionX*2+i*width/10,height*7/8+separacionY*2,separacionX,separacionY);
    }
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
}
