//Bacteria circle;
//Bacteria squad[i];
//declare bacteria variables here  
int myX = 300;
int myY = 300;
Bacteria [] squad;

void setup() {     
  background(0);
  size(600, 600);
  squad = new Bacteria[300];
//  circle = new Bacteria(300, 300);
for(int i = 0; i < squad.length; i++){
  
squad[i] = new Bacteria(300,300);
}
}
//initialize bacteria variables here

void draw()   
{    
  //move and show the bacteria
  //Bacteria circle = new Bacteria(myX, myY);

//  circle.show();
  //circle.move();

for (int i = 0; i < squad.length; i++) {
squad[i].move();
squad[i].show();
  }
}

//  redraw();
  //System.out.println();

class Bacteria    
{     
  int myX, myY;

  Bacteria(int x, int y) {

    myX = x;
    myY = y;
    //   bacteriaColor = 200;
  } 
  void show() {
    //background(9);
    fill(255, 0, 0);
    ellipse(myX, myY, 30, 30);
  }
  void move() {

    myX = myX + (int)(Math.random()*5)-2; 
    myY = myY + (int)(Math.random()*5)-2;
    
  }



  // write a new void for the random walks 
  //lots of java!
}    

