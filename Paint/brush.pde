public class Brush{
  private int r;
  private int g;
  private int b;
  private int xsize;
  private int ysize;
  private int shape;
  private int strokey;
  public Brush(){
  this.r = 0;
  this.b = 0;
  this.g = 0;
  this.ysize = 50;
  this.xsize = 50;
  this.shape = 1;
  
  
  }
  
  public void draw(){
    if(shape == 1){
      if(strokey==0){
      noStroke();
      fill(r,g,b);
      ellipse(mouseX,mouseY,xsize,ysize);
      
      }
      if(strokey == 1){
      stroke(5);
      fill(r,g,b);
      ellipse(mouseX,mouseY,xsize,ysize);
      
      }
    }
    if(shape == 2){
      if(strokey == 0){
        noStroke();
        fill(r,g,b);
        rect(mouseX,mouseY,xsize,ysize);
        
      }
      if(strokey == 1){
        stroke(5);
        fill(r,g,b);
        rect(mouseX,mouseY,xsize,ysize);
        
      }
      
    }
    
  }
}
