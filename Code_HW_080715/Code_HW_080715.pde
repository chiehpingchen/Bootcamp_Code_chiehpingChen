int i;

void setup(){
  size(800, 800);
  background(0);
}

void draw(){
background(0);
  noStroke();
  for(int i = 0; i < width; i = i+30){
    for(int j = 0; j < height; j = j+30){
      fill(random(i,255),random(j,255),random(i,j),random(0,255));
      ellipse(j+30, i+30, 10, 10);
      fill(random(0,255),random(0,255),random(0,255),3);
      triangle(j, i, mouseX, mouseY, i,j );
      triangle(i, j, mouseX, mouseY, j,i );
    }
  }
}


