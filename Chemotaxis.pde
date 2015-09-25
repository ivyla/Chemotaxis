//Bacteria circle;
//Bacteria squad[i];
//declare bacteria variables here  
int myX = 300;
int myY = 300;
int bacteriaColor = 0;
int r = 0;
int g = 0;
int b = 0;
int colorpicker = 0;
int shapepicker = 0;
//PImage z;
//https://imgflip.com/s/meme/Heavy-Breathing-Cat.jpgPImage img;

Bacteria [] squad;

void setup() {     
  background(0, 0, 0);
  size(1000, 800);
  squad = new Bacteria[350];
  //  circle = new Bacteria(300, 300);
  for (int i = 0; i < squad.length; i++) {

    squad[i] = new Bacteria(300, 300);
  }
   //    z = loadImage("https://imgflip.com/s/meme/Heavy-Breathing-Cat.jpg");
}
//initialize bacteria variables here

void draw()   
{    
  //move and show the bacteria
  //Bacteria circle = new Bacteria(myX, myY);

  //  circle.show();
  //circle.move();
  fill(0, 0, 0, 10);
  rect(0, 0, 1000, 800);
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
        colorpicker = (int)(Math.random()*3)+1;
    
    if(colorpicker == 1){
    r = (int)(Math.random()*256)+100;
    g = (int)(Math.random()*256)+50;
    b = (int)(Math.random()*256)+0;
    } else if(colorpicker == 2){
    r = (int)(Math.random()*256)+30;
    g = (int)(Math.random()*256)+0;
    b = (int)(Math.random()*256)+50;
    } else if(colorpicker == 3){
    r = (int)(Math.random()*256)+30;
    g = (int)(Math.random()*256)+0;
    b = (int)(Math.random()*256)+100;
    }
    fill(r, g, b);
    //fill(238,255,(int)(Math.random()*255)+100);
    //  ellipse(myX, myY, 30, 30);
    ellipse(myX, myY, 5, 5);
  }
  void move() {

    myX = myX + (int)(Math.random()*5)-2; 
    myY = myY + (int)(Math.random()*5)-2;

    if (mouseX <= myX) {
      myX -= (int)(Math.random()*6)-2;
    } 
    if (mouseX >= myX) {
      myX += (int)(Math.random()*6)-2;
    }
    if (mouseY >= myY) {
      myY += (int)(Math.random()*6)-2;
    } 
    if (mouseY <= myY) {
      myY -=(int)(Math.random()*6)-2;
    }
    if (myX == 600) {
      myX--;
    }
    if (myX == 0) {
      myX++;
    }
    if (myY == 0) {
      myY++;
    } 
    if (myY == 600) {
      myY--;
    }
  }




  // write a new void for the random walks 
  //lots of java!
}    

  void mousePressed() {
   

   shapepicker = (int)(Math.random()*6)+1;
   if(shapepicker == 1){
       fill((int)(Math.random()*256)+30,(int)(Math.random()*256)+100,(int)(Math.random()*256)+30);
    ellipse(mouseX, mouseY, (int)(Math.random()*500)+50,(int)(Math.random()*200)+30);
   }  if(shapepicker == 2){
       fill((int)(Math.random()*256)+30,(int)(Math.random()*256)+100,(int)(Math.random()*256)+30);
    rect(mouseX, mouseY, (int)(Math.random()*200)+50,(int)(Math.random()*200)+30);
   }  if(shapepicker == 3){
   fill((int)(Math.random()*256)+30,(int)(Math.random()*256)+100,(int)(Math.random()*256)+30);
 //   image(z, mouseX, mouseY,200,200);
   
 }
   
    

    //Add some if statements or the stimulus.
  }

