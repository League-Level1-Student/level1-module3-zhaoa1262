int frogX = 300;
int frogY = 550;

void setup() {
size(800, 600);
}

void draw() {
background(129, 40, 42);
fill(87, 216, 59);
noStroke();
ellipse(300, 550, 20, 20);

}

void keyPressed() {
if(key == CODED) {
frogY = frogY-1;
}

else if(keyCode == DOWN) {
frogY = frogY+1;
}

else if(keyCode == RIGHT) {
frogX = frogX + 1;
}

else if(keyCode == LEFT) {
frogX = frogX - 1;
}

}
