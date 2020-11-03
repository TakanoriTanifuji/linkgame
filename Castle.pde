public class Castle           // declare variable
{
PImage photo;
  int x, y, size;                       
 
public Castle()
 {                            // set variable 
  x = 2100;
  y = 332;
  size = 20;
  photo = loadImage("linkcastle.PNG");       // load image of castle
  photo.resize(140,120);
 }

public void show()                        // show the image
 {
  
   image(photo, x, y);
      
 }
   public void move()                  //   make the castle move
 {
 
  x = x - size;
 }
  
}