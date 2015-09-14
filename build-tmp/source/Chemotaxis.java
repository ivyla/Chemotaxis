import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 Bacteria babycircle;
 //declare bacteria variables here   
 

 public void setup()   
 {     
 	background(0);
 	size(600,600);
 	//initialize bacteria variables here   
 }   
 public void draw()   
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

 	public void show(){
 		noStroke();
 		fill(255,0,0);
 		ellipse(myX,myY, 30,30);


 	}
 	//lots of java!   
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
