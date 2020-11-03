 public class Block                        // declare variable
{

  int x, size;
 
public Block()
 {                             // set variable 
  x = 0;
  size = 20;                      

 }

public void show()
 {
  {
    for (int a=0; a<75; a++)        // draw blocks 
    {
     for (int b=0; b<3; b++)
     {
       stroke(0);
       strokeWeight(1.5);
      fill(186, 84, 33 );
    rect(x+a*30,440+30*b ,30,30);
     }
    }
  }
   
      
 }
   public void move()    
  {                             // make blocks move
 
  x = x - size;
  }
  
}