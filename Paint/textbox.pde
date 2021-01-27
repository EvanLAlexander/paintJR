public class TextBox{
  private String text = "";
  private int x;
  private int y;
  private boolean selected;
  
  public TextBox(int x, int y){
      this.x = x;
      this.y = y;
      this.selected = false;
      textSize(20);
      
  }
  public void mousePressed(){
    if(mouseX > this.x && mouseX < this.x + 75 && mouseY > this.y && mouseY < this.y + 50){
      
        this.selected = true;
        
      }else{
        this.selected = false;
      }
    
  }
  
  public void  draw(){
    stroke(0);
    fill(255);
    rect(this.x,this.y,75,50);
    fill(0);
    text(text, this.x + 10, this.y + 50);
  }
  
  void keyPressed() {
  if(this.selected == true){
    if (keyCode == BACKSPACE && this.text.length() > 0) {
    fill(255);
    rect(this.x, this.y , 75, 50);
    this.text = this.text.substring(0, this.text.length()-1);
  } else {
    if(key >= '0' && key <= '9'){
    this.text += key;
    
    }
  }
   }
}
}
