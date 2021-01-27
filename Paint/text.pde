public class Text{
  
  private String uText;
  private int r;
  private int g;
  private int b;
  private int size;
  private int x;
  private int y;
  
  public Text(String uText, int x, int y){
  this.uText = uText;
  this.r = 0;
  this.b = 0;
  this.g = 0;
  this.size = 36;
  this.x = y;
  this.y = x;
  }
  
  public void draw(){
  f = createFont("Arial", 18, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 36);
  fill(r,g,b);
  textSize(size);
  text(uText,x,y);
  }
  public void keyPressed(){
  if (keyCode == BACKSPACE && texto.uText.length() > 0) {
    fill(255);
    noStroke();
    rect(texto.x - 100, texto.y - 30, 200, 200);
    texto.uText = texto.uText.substring(0, texto.uText.length()-1);
  } else {
    texto.uText += key;
  }
  }
}
