int xPos;
int yPos;
boolean mouseOverTriangle;

void setup(){
  size(510,510);
  xPos = width/3;
  yPos = height/3;
  background(255,255,255);
}

void draw(){
//  background(mouseY - mouseX);
  fill(mouseX - mouseY,mouseX - mouseY,mouseX - mouseY,mouseX - mouseY);
  stroke(1);
  triangle(xPos, yPos, mouseX, mouseY, mouseX -xPos, mouseY - yPos);
  triangle(yPos, xPos, mouseX, mouseY, mouseX -xPos, mouseY - yPos);
  triangle(xPos, yPos, mouseY, mouseX, mouseX -xPos, mouseY - yPos);
  triangle(xPos, yPos, mouseX, mouseY, mouseY -yPos, mouseX - xPos);
  println("X postition of mouse " + mouseX);
  println(mouseY);
  if (mouseX >= width/2){
    mouseOverTriangle = true;
  }
  else if(mouseX <= xPos){
    mouseOverTriangle = false;
  }
  
  if (mouseOverTriangle == true){
    xPos = xPos + 1;
  }
  else {
    xPos = xPos - 1;
  }
  println(xPos);

}
