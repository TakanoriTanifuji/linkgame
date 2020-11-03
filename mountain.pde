public class Mountain                // declare variable
{

  int x, size;
 
public Mountain()                    // set variable
 {
  x = 100;
  size = 20;
 
 }

public void show()            // draw the mountaiin
 {
   fill(16, 153, 59);
  
      ellipse(x+150,360,62,70);
      quad(x+80,440,x+220,440,x+180,350,x+120,350);
      noStroke();
        ellipse(x+150,366,64,71);
 }
   public void move()           // make the mountain move to the left
 {
 
  x = x - size;
 }
  
}