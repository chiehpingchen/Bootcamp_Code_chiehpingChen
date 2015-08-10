int xPos;
int yPos;
boolean mouseOverTriangle;

void setup(){
  size(510,510);
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  background(mouseY - mouseX);
  fill(mouseX - mouseY,mouseX - mouseY,mouseX - mouseY,mouseX - mouseY);
  stroke(1);
  triangle(xPos - 50, yPos - 50, mouseX, mouseY, mouseX -xPos, mouseY - yPos);
  triangle(xPos - 50, yPos - 50, mouseY, mouseX, mouseX -xPos, mouseY - yPos);
  triangle(xPos - 50, yPos - 50, mouseY, mouseX, mouseX , mouseY);
  triangle(mouseX, mouseY, mouseY, mouseX, mouseX -xPos, mouseY - yPos);
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
