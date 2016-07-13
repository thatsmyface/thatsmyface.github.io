ArrayList shapes;
float w = 1;
int back = 0;
int t = 1;
void setup(){
  size(400,400);
  shapes = new ArrayList();
}

void draw(){
  background(back);
  if (mousePressed){
    shapes.add(new Shape());
  }
  for (int i=0; i<shapes.size(); i++) {
    Shape s = (Shape) shapes.get(i);
    s.run();
    if (s.opacity < 0){
    shapes.remove(i);
    }
  }
}

class Shape{
  float sSize;
  float xPosition;
  float yPosition;
  float opacity;
  float r;
  float g;
  float b;

  Shape() {
    xPosition = mouseX;
    yPosition = mouseY;
    sSize = 30;
    opacity = 255;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  void run(){
    sSize += 2;
    opacity -= 3;
    
    noFill();
    strokeWeight(2);
    stroke(r+100,g+100,b+100,opacity);
    if (w == 1){
    ellipse(xPosition, yPosition, sSize, sSize);
    }else if (w == -1){
    rect(xPosition-(sSize/2), yPosition-(sSize/2), sSize, sSize);
    }
    
  }
}

void keyPressed(){
  if(key == '`'||key == '~'){
    w = w * -1;
  }
  if(key == 'b'||key == 'B'){
    if (t == 1){
    back = 255;
    }
    if ( t == -1){
      back = 0;
    }
    t = t * -1;
  }
}