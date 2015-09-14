 Bacteria babycircle;
 //declare bacteria variables here   
 

 void setup()   
 {     
 	background(0);
 	size(600,600);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria 

 	babycircle = new Bacteria(300,300);
 	babycircle.show();
 }  
 class Bacteria    
 {     
 	int numBacteria, myX, myY;

 	Bacteria(int x, int y){

 		myX = x;
 		myY = y;
 		numBacteria = 200;
 	}

 	void show(){
 		noStroke();
 		fill(255,0,0);
 		ellipse(myX,myY, 30,30);

 	}

 	// write a new void for the random walks 
 	//lots of java!   
 }    