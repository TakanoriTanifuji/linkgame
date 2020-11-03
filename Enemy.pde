public class Enemy                       // declare variable
{
 PImage photo, photo1;                            
 int x,y,x1,y1,size, xSpeed, x2, x1Speed;
public Enemy()
 {
  x = 400;                              // set variables
  y = 410;
  x2 = 0;
  x1 = 1200;
  y1 = 340;
  xSpeed = 1;
  x1Speed = 1;
  size = 15;
  photo = loadImage("octoro.png");       // load image of enemy
  photo.resize(30,30);
  photo1 = loadImage ("ganon1.PNG");
  photo1.resize(150,120);
 }

public void show()                    // make the enemy appaer on the screen
 {       
    image(photo, x, y);
   image(photo1, x1,y1);
 }
 

 public void moveL()                    // make the 2 enemies move along the background
 {
   x1 = x1 - size;
   x = x - size;
   x2 = x2 + size;
 }
 
 public void move()                   // make the 2 enemies move automatically back and force.
   {
    if (x >= 400 - x2)
    {
      xSpeed = xSpeed * -1;
    }
   else if (x <= 200 - x2)
   {
      xSpeed = xSpeed * -1;
     
   }
    x = x + xSpeed;
   
   
   
    
    if (x1 >= 1200 - x2)
    {
      x1Speed = x1Speed * -1;
    }
   else if (x1 <= 1100 -x2)
   {
      x1Speed = x1Speed * -1;
     
   }
    x1 = x1 + x1Speed;
   
   
  
 }
}