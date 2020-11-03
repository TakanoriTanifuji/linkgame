 public class Hole                     // declare variable
{

  int x, size;
 
public Hole()
 {                        // set variable 
  x = 0;
  size = 20;                      

 }

public void show()                      // show the hole
 {
   noStroke();
  fill(100, 154, 239);
  rect (692+x,440,87,80);
  rect (840+x,440, 60,80);
      
 }
   public void move()                   // move the hole along the background
   {
     
   x = x - size;
   }
}