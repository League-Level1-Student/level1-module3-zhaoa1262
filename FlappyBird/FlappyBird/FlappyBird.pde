int x = 175;
int y = 0;
int birdYVelocity = 3;
int gravity = 1;

void setup() {
size(350, 500);

}

void draw() {
background(0, 196, 255);
fill(255, 247, 0);
stroke(255, 222, 0);
ellipse(x, y, 30, 30);
y=y+birdYVelocity+gravity;

}
