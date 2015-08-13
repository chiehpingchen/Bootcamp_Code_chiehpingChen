
int [] circleX = new int [800];
int [] circleY = new int [800];

void setup(){
size(510,510);
}

void draw(){
  background(0);
//  fill(255,0,0);
  noStroke();
  for (int i=0; i < circleX.length; i++){
     circleX[i] = int(random(0, width));
     circleY[i] = int(random(0, height));
  }
  for (int i=0; i < circleX.length; i++){
    float red = map(i,0, 900,0, 255);
    float green = map(i,0,circleX.length,0,255);
    float blue = map(i,0,circleX.length,0,255);
    fill(random(0,red),random(0,green) ,random(0,blue),i);
    triangle(mouseX, mouseY, circleX[i], circleY[i],mouseY,mouseX);
 println(circleX[i],circleY[i]);
 }
}

