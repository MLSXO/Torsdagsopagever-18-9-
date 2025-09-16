
Circle[] circles = new Circle[10];

void setup() {
  
  size(600, 400);
  
  for (int i = 0; i < circles.length; i++) {
    float x = 50 + i * 50;
    float y = height/2;      
    circles[i] = new Circle(x, y);  
  }
}

void draw() {
  background(220);
  
  for (Circle c : circles) {
    c.move(random(-2, 2), random(-2, 2)); 
  }
}

class Circle {
  float xposition;
  float yposition;
  
  Circle(float x, float y) {
    xposition = x;
    yposition = y;
  }
  
  void display() {
    ellipse(xposition, yposition, 30, 30);
  }
  
  void move(float dx, float dy) {
    xposition += dx;
    yposition += dy;
    display();
  }
}
