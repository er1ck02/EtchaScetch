int x, y; //<>//

void setup() {
  size(400, 400);
  frameRate(10);
  x = width/2;
  y = height/2;
}

void draw() {
  fill(255);
  strokeWeight(2);

}


void moveleft(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x-i, y);
  }
  x=x-(5*rep);
}
void moveright(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x+i, y);
  }
  x=x+(5*rep);
}
void moveup(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x, y-i);
  }
  y=y-(5*rep);
}
void movedown(int rep) {
  for (int i=0; i<rep*5; i++) {
    point(x, y+i);
  }
  y=y+(5*rep);
}
void mouseClicked() {
  saveFrame("line-######.png");
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveright(1);
    } else if (keyCode == DOWN) {
      movedown(1);
    } else if (keyCode == UP) 
    {
      moveup(1);
    } else if (keyCode == LEFT) {
      moveleft(1);
    }
  }
}