//Bacteria circle;
//Bacteria squad[i];
//declare bacteria variables here  
int myX = 300;
int myY = 300;
int bacteriaColor = 0;
Bacteria [] squad;

void setup() {     
  background(200,200,200);
  size(600, 600);
  squad = new Bacteria[350];
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
  fill(0,0,0,10);
  rect(0,0,600,600,90);
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
    bacteriaColor = (int)(Math.random()*255)-1;
  } 
  void show() {
    noStroke();
    fill((int)(Math.random()*255)-200,(int)(Math.random()*255),255);
  //  ellipse(myX, myY, 30, 30);
    ellipse(myX/2*3, myY/2*3,5,5);
  }
  void move() {

    myX = myX + (int)(Math.random()*5)-2; 
    myY = myY + (int)(Math.random()*5)-2;
    
    if(mouseX <= myX +20){
    myX -= 1;
    } 
    if(mouseX >= myX+20){
    myX += 1;
    }
    if(mouseY >= myY +20){
    myY += 1;
    } 
    if(mouseY <= myY +20){
    myY -= 1;
    }
    if(myX == 600){
      myX--;
    }
    if(myX == 0){
      myX++;
    }
    if(myY == 0){
      myY++;
    } 
    if(myY == 600){
    myY--;
    }
  }
  
  void follow(){
  //Add some if statements or the stimulus.
  
  
  }



  // write a new void for the random walks 
  //lots of java!
}    

