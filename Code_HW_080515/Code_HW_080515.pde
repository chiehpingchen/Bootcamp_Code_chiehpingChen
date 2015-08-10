PFont font;
PImage myImage;
float x = 32;

void setup(){
  size(1600, 1200);
  fill(0,0,0);
  font = createFont("Christiana.ttf", 200);
//  font = loadFont("Christiana.ttf", 200);
  myImage = loadImage("yao.jpg");
  textFont(font, 100);

}

void draw(){
  fill(255,255,255);

  if (mousePressed){
    background(255,0,0);
    image(myImage, 256,298);
    textSize(x);
    text("uh~", 258,1200-298);
    x = (x+ 0.8);
  }
  if (mousePressed == false){
     background(random(0,50),random(0,50),random(0,50));
     textSize(random(47,50));
     text("Press ME", mouseX, mouseY);
  }
  if (keyPressed){
    if(key == 's'){
      saveFrame();
    }
  }
}
