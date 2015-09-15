Bacteria babycircle;
//declare bacteria variables here  
int myX = 300;
int myY = 300;

void setup(){     
  background(0);
  size(600, 600);
  Bacteria babycircle = new Bacteria(myX, myY);
}
  //initialize bacteria variables here

void draw()   
{    
  //move and show the bacteria
  //Bacteria babycircle = new Bacteria(myX, myY);
  babycircle.move();
  babycircle.show();
  
}  

class Bacteria    
{     
  int numBacteria, myX, myY;

  Bacteria(int x, int y) {

    myX = x;
    myY = y;
    numBacteria = 200;
  } 
  void show() {
    noStroke();
    fill(255, 0, 0);
    ellipse(myX, myY, 30, 30);
  }
  void move() {

    myX = x + (int)(Math.random()*10)-1; 
    myY = x + (int)(Math.random()*10)-1;
  }



  // write a new void for the random walks 
  //lots of java!
}    

