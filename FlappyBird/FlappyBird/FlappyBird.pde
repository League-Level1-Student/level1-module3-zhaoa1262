int birdX = 175;
int birdY = 0;
int birdYVelocity = 50;
int gravity = 2;
int pipeX = 350;
int upperPipeHeight = (int) random(100, 400);;
int pipeGap = 70;
int lowerPipeTop;
int pipeWidth = 30;
int score = 0;

void setup() {
size(350, 500);

}

void draw() {
  background(0, 196, 255);
fill (137, 113, 87);
rect(0, 490, 350, 10);


//bird
fill(255, 247, 0);
stroke(255, 222, 0);
ellipse(birdX, birdY, 30, 30);
birdY = birdY+gravity;

//pipes
lowerPipeTop = upperPipeHeight + pipeGap;
fill(8, 250, 118);
noStroke();
rect(pipeX, 0, pipeWidth, upperPipeHeight);
rect(pipeX, lowerPipeTop, pipeWidth, 500-lowerPipeTop);
pipeX = pipeX-1;

if(pipeX == 0) {
teleportPipes();
}

if(intersectsPipes()==true || birdY>=490) {
exit();
}

text(score, 300, 10);


}

void mousePressed() {
  birdY = birdY-birdYVelocity;
}

void teleportPipes() {
   upperPipeHeight = (int) random(100, 400);
 pipeX = 350;
 text(score, 300, 10);
score = score + 1;
}

boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
            return true; }
        else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
            return true; }
        else { return false; }
}
