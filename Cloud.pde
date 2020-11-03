 public class Cloud           // declare variable
{

  int x, size;                       
 
public Cloud()
 {                            // set variable 
  x = 130;
  size = 20;
 
 }

public void show()
 {
  stroke(0);                            // draw clouds 
       fill(255);
    ellipse(x+440, 247, 40, 40);
    ellipse(x+420, 250, 30, 30);
     ellipse(x+460, 250, 30, 30);
     noStroke();
    ellipse(x+440, 248, 38, 38);

   
      for(int b=0; b<2; b++)
      {
        stroke(0);
    fill(255);
    ellipse(x+20+b*200, 197-b*100, 40, 40);
    ellipse(x+ b*200, 200-b*100, 30, 30);
     ellipse(x+40+ b*200, 200-b*100, 30, 30);
     noStroke();
    ellipse(x+20+b*200, 198-b*100, 38, 38);
      }
      
 }
   public void move()                  //   make the clouds move
 {
 
  x = x - size;
 }
  
}