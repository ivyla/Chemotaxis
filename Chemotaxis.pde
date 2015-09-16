Bacteria circle;
//declare bacteria variables here  
int myX = 300;
int myY = 300;

void setup(){     
  background(0);
  size(600, 600);
  circle = new Bacteria(300,300);
}
  //initialize bacteria variables here

void draw()   
{    
  //move and show the bacteria
  //Bacteria circle = new Bacteria(myX, myY);

    circle.show();
    circle.move();
    redraw();
  //System.out.println();
}  

class Bacteria    
{     
  int myX, myY;

  Bacteria(int x, int y) {

    myX = x;
    myY = y;
 //   bacteriaColor = 200;
  } 
  void show() {
    fill(255, 0, 0);
    ellipse(myX, myY, 30, 30);
  }
  void move() {

    myX = myX + (int)(Math.random()*3)-1; 
    myY = myX + (int)(Math.random()*3)-1;
  }



  // write a new void for the random walks 
  //lots of java!
}    

