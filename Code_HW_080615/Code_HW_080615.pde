int r,g,b;
//gouping r,g,b ints together
//int r;
//int g;
//int b;
float radius;
float x, y;
float speed;
float size;
float xPos;
float yPos;


void setup(){
size(800,800);
x = width/2;
y = height/2;
radius =2;
speed = 0.001;
size = width/4;

}

void draw(){
  background(random(0,255),random(0,255),random(0,255),12);
fill(0,10);
rect(0,0,800,800);
noStroke();
r=255;
g=0;
b=0;
fill(random(0,255),random(0,255),random(0,255),random(0,255));
float time = millis();
x = width/2 + sin(random(1,360)) *size;
y = height/2 + cos(random(1,360)) *size;

ellipse(x,y,sin(random(1,360))*50,cos(random(1,360))*50);
}
