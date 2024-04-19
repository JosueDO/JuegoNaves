class Escenario{
  private PImage imagen;
  private color tinte = color(25,28,77,150);
  
  public Escenario(){
    imagen = loadImage("montania.jpg");
  }
  public void dibujar(){
    tint(tinte);
    imageMode(CORNER);
    image(imagen,0,0,width,height);
    noTint();
    noStroke();
    fill(255);
    ellipse(random(0,width),random(0,height),3,3);
  }
}
  
