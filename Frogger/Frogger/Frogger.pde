int frogX = 300;
int frogY = 550;
Car car1 = new Car(50, 50, 60, 5); 
Car car2 = new Car(275, 200, 60, 5);
Car car3 = new Car(500, 350, 60, 5); 
Car car4 = new Car(715, 500, 60, 5); 

void setup() {
size(800, 600);

}

void draw() {
background(187, 234, 228);
fill(55, 160, 61);
noStroke();
ellipse(300, 575, 20, 20);

car1.display();
car1.move("left");
car2.display();
car2.move("right");
car3.display();
car3.move("left");
car4.display();
car4.move("right");

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

void Boundaries () {
if (frogX <= 0) {
frogX = 0;
}

else if (frogX >= 800) {
frogX = 800;
}

else if (frogY <= 0) {
frogY = 0;
}

else if (frogX >= 600) {
frogX = 600;
}
}

public class Car  {
  
      private int carXPosition;
      private int carYPosition;
      private int sizeOfCar;
      private int speed;
      
      public Car(int carXPosition, int carYPosition, int sizeOfCar, int speed) {
    
        this.carXPosition = carXPosition;
        this.carYPosition = carYPosition;
        this.sizeOfCar = sizeOfCar;
        this.speed = speed;

      }

      public void move(String direction) {
         if(direction.equals("right")){
             this.carXPosition = this.carXPosition - speed;
              if (carXPosition <= 0) {
              carXPosition = 800;
              }

           }
 
          if(direction.equals("left")){
               this.carXPosition = this.carXPosition + speed;
                if (carXPosition >= 800) {
                carXPosition = 0;
                }

           }
        }

void display()
  {
    fill(0, 56, 250);
    rect(carXPosition , carYPosition,  sizeOfCar, 50);
  }


void getX() {

}
void getY() {

}
void Size() {

}

boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
