float rotate;

void setup() {
  size(640, 640, OPENGL);
  background(122);
}

void draw() {
  background(122);
  Cube myCube = new Cube();
  translate(width/2, height/2, -width/4);
  rotateX(mouseX * 0.005);
  rotateY(mouseY * 0.005);
  rotateZ( ( mouseX + mouseY) * 0.005);
  myCube.draw();
}

class Cube {

  Cube() {
    
  }

  void draw() {

    translate(-(width/2-width/4),-(height/2- height/4), -(width/2-width/4));
  
    beginShape(LINES);  
    noFill();
    vertex(0, 0, 0);
    vertex(width/2, 0, 0);
    vertex(width/2, height/2, 0);
    vertex(0, height/2, 0);
    vertex(0, height/2, 320);
    vertex(width/2, height/2, 320);
    vertex(width/2, 0, 320);
    vertex(0, 0, 320);
    endShape();

    pushMatrix();
    translate(0, 0, 320); 
    rotateY(PI/2);
    beginShape(LINES);
    noFill();
    vertex(0, 0, 0);
    vertex(width/2, 0, 0);
    vertex(width/2, height/2, 0);
    vertex(0, height/2, 0);
    vertex(0, height/2, 320);
    vertex(width/2, height/2, 320);
    vertex(width/2, 0, 320);
    vertex(0, 0, 320);
    endShape();
    popMatrix();

    pushMatrix();
    translate(320, 0, 0); 
    rotateZ(PI/2);
    beginShape(LINES);
    noFill();
    vertex(0, 0, 0);
    vertex(width/2, 0, 0);
    vertex(width/2, height/2, 0);
    vertex(0, height/2, 0);
    vertex(0, height/2, 320);
    vertex(width/2, height/2, 320);
    vertex(width/2, 0, 320);
    vertex(0, 0, 320);
    endShape();
    popMatrix();

  }
}