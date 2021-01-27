
int texty;
PFont f;
PFont r;
Text texto;

Brush brushy;
TextBox red;
TextBox green;
TextBox blue;

void setup() {
  size(1353, 1000);
  background(255);
  fill(255);
  
  f = createFont("Arial", 18, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 36);
  fill(255);
  rect(0, 101, 1353, 1000);
  fill(255);
  rect(0, 0, 75, 100); //r
  fill(0);
  textSize(36);
  text("\n R ", 15.0, 5.0);
  brushy = new Brush();
  texto = new Text("", 120, 100);
  red = new TextBox( 0 , 100);
  green = new TextBox(76,100);
  blue = new TextBox(152,100);
}

void draw() {
  fill(255);
  rect(0, 0, 75, 100); //r
  fill(0);
  textSize(36);
  text("\n R ", 15.0, 5.0);
  textSize(20);
  text("+", 15.0, 90);//+
  textSize(20);
  text("-", 55.0, 90);//-
  fill(255);
  rect(76, 0, 75, 100); //g
  fill(0);
  textSize(36);
  text("\n G ", 91.0, 5.0);
  textSize(20);
  text("+", 90.0, 90); //+
  textSize(20);
  text("-", 135.0, 90); //-
  fill(255);
  rect(152, 0, 75, 100); //b
  fill(0);
  textSize(36);
  text("\n B ", 167.0, 5.0);
  textSize(20);
  text("+", 165.0, 90); //+
  textSize(20);
  text("-", 205.0, 90); //-
  fill(255);
  rect(228, 0, 175, 50); // preset
  fill(0);
  textSize(36);
  text(" Presets: ", 240.0, 40.0);
  fill(255);
  rect(228, 51, 175, 49); // text
  fill(0);
  textSize(36);
  text("\n Text ", 265.0, 40.0);
  fill(255, 0, 0);
  rect(404, 0, 100, 100); // r
  fill(255, 255, 0);
  rect(505, 0, 100, 100); // y
  fill(25, 255, 75);
  rect(606, 0, 100, 50); // LG
  fill(34, 139, 34);
  rect(606, 51, 100, 49); // DG
  fill(75, 160, 255);
  rect(707, 0, 100, 50); // LB
  fill(0, 0, 139);
  rect(707, 51, 100, 49); // DB
  fill(255);
  rect(808, 0, 100, 100); //white
  fill(0);
  rect(909, 0, 100, 100); // black
  fill(255);
  rect(1010, 0, 221, 30); // brushes
  fill(0);
  textSize(36);
  text(" Brushes: ", 1020.0, 30.0);
  textSize(20);
  text("+", 1200, 15);
  textSize(20);
  text("-", 1203, 30);
  fill(255);
  rect(1010, 31, 110, 69); // circle
  fill(0);
  ellipse(1065, 65, 50, 50); // circle in circle
  fill(255);
  rect(1121, 31, 110, 69); // square
  fill(0);
  rect(1150, 40, 50, 50); //square in square
  fill(255);
  rect(1232, 0, 120, 100); // clear
  fill(0);
  textSize(36);
  text(" Clear ", 1235.0, 60.0);
  fill(255);
  noStroke();
  rect(1200, 700, 300, 400);
  if (texty == 1) {
    fill(texto.r, texto.g, texto.b);
    textSize(texto.size);
    text("T", 1285, 840);
  }
  if (texty == 0) {
    if (brushy.shape == 1) {
      if (brushy.strokey==0) {
        noStroke();
        fill(brushy.r, brushy.g, brushy.b);
        ellipse(1300, 820, brushy.xsize, brushy.ysize);
      }
      if (brushy.strokey == 1) {
        stroke(5);
        fill(brushy.r, brushy.g, brushy.b);
        ellipse(1300, 820, brushy.xsize, brushy.ysize);
      }
    }
    if (brushy.shape == 2) {
      if (brushy.strokey == 0) {
        noStroke();
        fill(brushy.r, brushy.g, brushy.b);
        rect(1270, 850-brushy.xsize, brushy.xsize, brushy.ysize);
      }
      if (brushy.strokey == 1) {
        stroke(5);
        fill(brushy.r, brushy.g, brushy.b);
        rect(1270, 850-brushy.xsize, brushy.xsize, brushy.ysize);
      }
    }
  }
  

  if(mousePressed == true){
    if (texty == 0) {
      if (mouseX > 0 && mouseX < width && mouseY > 101 && mouseY < height) {
        brushy.draw();
      }
    
  }
  }
  
  if (texty == 1) {
    if (mouseX > 0 && mouseX < width && mouseY > 101 && mouseY < height) {
      texto.draw();
    }
    
    
    
  }
  
      red.draw();
      green.draw();
      blue.draw();
  
  
  
  
}

void mousePressed() {
  red.mousePressed();
  green.mousePressed();
  blue.mousePressed();

  if (texty == 1) {
    texto.uText = "";
    texto.x = mouseX;
    texto.y = mouseY;
  }
  if (mouseX > 0 && mouseX < 75 && mouseY > 60 && mouseY < 100) {
    red.text = "";
  }
  if (mouseX > 76 && mouseX < 151 && mouseY > 60 && mouseY < 100) {
    green.text = "";
  }
  if (mouseX > 152 && mouseX < 228 && mouseY > 60 && mouseY < 100) {
    blue.text = "";
  }
  if (mouseX >= 228 && mouseX <= 403 && mouseY >= 51 && mouseY <= 100) {
    println("works");
    texty = 1;
  }
  if (mouseX >= 228 && mouseX <= 403 && mouseY >= 0 && mouseY <= 50) {
    texty = 0;
  }
  if (mouseX >= 404 && mouseX <= 504 && mouseY >= 0 && mouseY <= 100 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 255;
      brushy.g = 0;
      brushy.b = 0;
    }
    if (texty == 1) {
      texto.r = 255;
      texto.g = 0;
      texto.b = 0;
    }
  }
  if (mouseX >= 505 && mouseX <= 605 && mouseY >= 0 && mouseY <= 100 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 255;
      brushy.g = 255;
      brushy.b = 0;
    }
    if (texty == 1) {
      texto.r = 255;
      texto.g = 255;
      texto.b = 0;
    }
  }
  if (mouseX >= 606 && mouseX <= 706 && mouseY >= 0 && mouseY <= 50 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 25;
      brushy.g = 255;
      brushy.b = 75;
    }
    if (texty == 1) {
      texto.r = 25;
      texto.g = 255;
      texto.b = 75;
    }
  }
  if (mouseX >= 606 && mouseX <= 706 && mouseY >= 51 && mouseY <= 100 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 34;
      brushy.g = 139;
      brushy.b = 34;
    }
    if (texty == 1) {
      texto.r = 34;
      texto.g = 139;
      texto.b = 34;
    }
  }
  if (mouseX >= 707 && mouseX <= 807 && mouseY >= 0 && mouseY <= 50 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 75;
      brushy.g = 160;
      brushy.b = 255;
    }
    if (texty == 1) {
      texto.r = 75;
      texto.g = 160;
      texto.b = 255;
    }
  }
  if (mouseX >= 707 && mouseX <= 807 && mouseY >= 51 && mouseY <= 100 ) { 
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 0;
      brushy.g = 0;
      brushy.b = 139;
    }
  }
  if (mouseX >= 808 && mouseX <= 908 && mouseY >= 0 && mouseY <= 100 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 255;
      brushy.g = 255;
      brushy.b = 255;
    }
    if (texty == 1) {
      texto.r = 255;
      texto.g = 255;
      texto.b = 255;
    }
  }
  if (mouseX >= 909 && mouseX <= 1009 && mouseY >= 0 && mouseY <= 100 ) {
    red.text = "";
    green.text = "";
    blue.text = "";
    if (texty == 0) {
      brushy.r = 0;
      brushy.g = 0;
      brushy.b = 0;
    }
    if (texty == 1) {
      texto.r = 0;
      texto.g = 0;
      texto.b = 0;
    }
  }

  if (mouseX >= 1010 && mouseX <= 1120 && mouseY >= 31 && mouseY <= 100 ) { 

    brushy.shape = 1;
  }
  if (mouseX >= 1121 && mouseX <= 1241 && mouseY >= 31 && mouseY <= 100 ) { 

    brushy.shape = 2;
  }
  if (mouseX >= 1242 && mouseX <= width && mouseY >= 0 && mouseY <= 100 ) { 

    fill(255);
    rect(0, 101, 1353, 1000);
  }
  if (mouseX >= 0 && mouseX <= 35 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.r += 10;
    }
    if (texty == 1) {
      texto.r += 10;
    }
  }
  if (mouseX >= 36 && mouseX <= 75 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.r -= 10;
    }
    if (texty == 1) {
      texto.r -= 10;
    }
  }
  if (mouseX >= 75 && mouseX <= 120 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.g += 10;
    }
    if (texty == 1) {
      texto.g += 10;
    }
  }
  if (mouseX >= 121 && mouseX <= 150 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.g -= 10;
    }
    if (texty == 1) {
      texto.g -= 10;
    }
  }
  if (mouseX >= 151 && mouseX <= 185 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.g -= 10;
    }
    if (texty == 1) {
      texto.g -= 10;
    }
  }
  if (mouseX >= 186 && mouseX <= 225 && mouseY >= 80 && mouseY <= 100 ) {
    if (texty == 0) {
      brushy.b -= 10;
    }
    if (texty == 1) {
      texto.b -= 10;
    }
  }
  if (mouseX >= 1170 && mouseX <= 1232 && mouseY >= 0 && mouseY <= 15 ) {
    if (texty == 0) {
      brushy.xsize += 10;
      brushy.ysize += 10;
    }
    if (texty == 1) {
      texto.size += 10;
    }
  }
  if (mouseX >= 1170 && mouseX <= 1232 && mouseY >= 16 && mouseY <= 30 ) {
    if (texty == 0) {
      brushy.xsize -= 10;
      brushy.ysize -= 10;
    }
    if (texty == 1) {
      texto.size -= 10;
    }
  }
}


void keyPressed() {
  green.keyPressed();
  red.keyPressed();
  blue.keyPressed();
  texto.keyPressed();
  if(texty == 1){
  if(red.selected == true){
  texto.r = int(red.text);
  }
  }
  if(texty == 0){
  if(red.selected == true){
  brushy.r = int(red.text);
  }
  }
  if(texty == 1){
  if(green.selected == true){
  texto.g = int(green.text);
  }
  }
  if(texty == 0){
  if(green.selected == true){
  brushy.g = int(green.text);
  }
  }
  if(texty == 1){
  if(blue.selected == true){
  texto.b = int(blue.text);
  }
  }
  if(texty == 0){
  if(blue.selected == true){
  brushy.b = int(blue.text);
  }
  }
  
  
  if (key=='s' && texty == 0) {

    brushy.strokey = 1;
  }
  if (key=='n' && texty == 0) {

    brushy.strokey = 0;
  }
}
