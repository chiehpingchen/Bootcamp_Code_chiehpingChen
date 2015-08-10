Eye e1;

void setup() {
  size(800, 600);
  noStroke();
  e1 = new Eye( 400, 300, 250);
}

void draw() {
  background(mouseX - mouseY);
  
  fill(255);
  stroke(0);
  strokeWeight(10);
  ellipse(400,300,400,400);

  e1.update(mouseX, mouseY);
  e1.display();

}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(0);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(255);
    ellipse(size/4, 0, size/2, size/2);
    noStroke();
    popMatrix();
  }
}
