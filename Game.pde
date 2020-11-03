
Hero l;                         //   declare variable
Cloud c;
Block b;
Mountain m;
Enemy e;
Castle a;
Hole h;

 void setup()
{
  size(650,500);                // rewrite background when the character moves
 background(100, 154, 239);
 l = new Hero();
 c = new Cloud();
 b = new Block();
 m = new Mountain();
 e = new Enemy();
 a = new Castle();
 h = new Hole();
}

void draw()
{
  
  background(100, 154, 239);        // call the method here. 
  blocks();
  cloud();
  mountain();
  c.show();
  b.show();
  m.show();
  a.show();
  e.show();
  h.show();
  checkCollision();
  e.move();
  
  
  
  if ( keyCode != LEFT )                          // if the keycode is not equal to left, show the character that face right
  {
  l.show();
  }
  if (l.x > 1 && keyCode == LEFT)                  // if the keycode is equal to left, show the character that face left
  {
  l.showfliped();
  }  
  
  
  if (l.y < 410 )                 // apply gravity when the character is in the air
  {
    
  l.gravity();
  l.hitBottom();
  } 
  else if (l.y >= 405  && b.x > -452 && b.x < -365)      // if the character is at the hole, make the character fall 
     {
       
     l.gravity();
     }
   else if (l.y >= 405 &&  b.x >-572 && b.x <-512)
     {
       
        l.gravity();
     }
      
      
      
      if (l.x >= 560)                               // when link is at the castle make the screen black and say "YOU WIN"
      {
        fill(0);
        rect(0,0,width,height);
        fill(255);
        text("YOU WIN!!", 325, 250);
      }
      
     
        
     
}

  void blocks()
  {
    
  }
  
  
  void mountain()       // make the mountain reappear when those clouds completely shifted to the left.
  {
    if (m.x < -460)
   {
     m.x=500;
   }
  }
 
    void cloud()     // make the clouds reappear when those clouds completely shifted to the left.
    {
   if (c.x < -460)
     {
     c.x=650;
     }
    
    }
    
   void enemy()                                 // show the enemy
   {
     e.show();
   }
   
    public void checkCollision()                     // when the hero touched the enemy, make the hero go back to x = 10;
  {
    if ((l.x >= e.x1 - 10 && l.x <= e.x1 + 10) && l.y == 410)                // I tried to make the chracter collied for the bigger monster, but it didn't work.
    {
     l.x = 10;
    }
    if ((l.x >= e.x - 15 && l.x <= e.x + 15) && l.y == 410)
    {
      l.x = 10;
    }
     
  }
 

 
    
  
public void keyPressed()                    // move the character depeds on what arrowkey you pressed.
{
  if (key==CODED)
  {
    if (keyCode==RIGHT)
    {
      l.moveR();
     
      if (l.x>320 && b.x > -1600 )           // make the backgroud move when the character moved to the midd
      {
      c.move();
      l.x=320;
      b.move();
      m.move();
      e.moveL();
      e.move();
      a.move();
      h.move();
      
      }
      if (b.x < -1600)                      // if the block moved to - 1600, do not make the backgroud move anymore.
      {
        b.x = -1600;
        c.x = -380;
        m.x = 420;
      }
     
    }
   
   
   if(keyCode==LEFT)                 // when the left key is pressed, make the chracter move left.
      {
        
       l.moveL();
       
      }  
      
      
       if(keyCode==UP)               // when the up key is pressed, make the chracter move up.
       { 
         
           l.moveU();  
       }
         
       
       
   }   
  }