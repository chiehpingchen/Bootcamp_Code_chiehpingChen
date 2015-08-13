
import ddf.minim.*;

AudioPlayer player;
Minim minim;

PVector location;
PVector velocity;
float distance;
int score = 0;
int miss = 0 ;

void setup(){  
  size(800, 500);
  background(0);
  smooth();
  location = new PVector(random(100,700), 25);
  velocity = new PVector(5,5);
  
  minim = new Minim(this);
  player = minim.loadFile("Athena-Sky.mp3", 2048);
  player.play();
  
}

void draw(){
  
    for(int i = 0; i < width + 12; i = i+12){
    for(int j = 0; j < height +12; j = j+12){
      fill(random(50,255),random(50,255),random(50,255),random(50,255));
      ellipse(i, j, 2, 2);
    }
    }
    
  fill(0,100);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
  
  frameRate(10000);
  
  location.add(velocity);
  distance = dist(location.x, location.y, mouseX, 490);
  
  fill(200,255,0);
  noStroke();
  
  ellipse(location.x, location.y, 30, 30);
  
  fill(255);
  ellipse(mouseX, 490, 80, 80);
  
  textSize(20);
  text("SCORE:", 20, 50);
  text(score, 150, 50);
  
  fill(255,0,0);
  textSize(20);
  text("MISS:", 20, 80);
  text(miss, 150, 80);
  rect(400,500,800,5);



if (location.x > width - 15){
    velocity.x = velocity.x * -1;
  }
  if (location.x < 0 + 15){
    velocity.x = velocity.x * -1;
  }
  
  if (location.y > height - 10){
    velocity.y = velocity.y * -1;
    textSize(100);
    text("MISS!", 250, 300);
    miss = miss + 1;
  }

if (location.y < 0 + 15){
    velocity.y = velocity.y * -1;
}

 if (distance < 45){
    velocity.x = velocity.x * -1;
    velocity.y = velocity.y * -1;
    fill(255,255,0);
    textSize(100);
    text("Nice Job!",180,300);
    score = score + 1;
  }
  
  if (miss > 2 ){
    
    background(0);
    for(int i = 0; i < width + 12; i = i+12){
    for(int j = 0; j < height +12; j = j+12){
    fill(random(50,255),random(50,255),random(50,255),random(50,255));
    ellipse(i, j, 2, 2);
   }
 }

    textSize(100);
    fill(255, 0, 0);
    text("Game Over", 128,300);
    fill(255,255,255);
    textSize(20);
    text("SCORE:", 20, 50);
    text(score, 150, 50);
    fill(255,0,0);
    velocity.mult(0);
  }
  
  println(score,frameRate);
  
}


