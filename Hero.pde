public class Hero                        // declare variable
{
 PImage photo,photo1,photo2;              
  float x,y,size,gravity,xSpeed,initialSpeed, position,terminal;
  //float x1,y1;
public Hero()
 {
  x = 10;                                      // set variables
  y = 410;
  //x1 = 10;                                     // set variables
  //y1 = 410;
  size = 15;
  gravity = 0.05;
  xSpeed = 0;
  initialSpeed=80;
  terminal = 40;
  photo = loadImage("1727273_200x130-png.gif");       // load image of hero
  photo.resize(30,30);
  photo1 = loadImage ("07020441_1727273_200x130-png.gif");
  photo1.resize(30,30);
 
 }

public void show()                    // make the hero appaer on the corner of the screen
 {       
image(photo, x, y);

 }
 
 public void showfliped()               // make the fliped hero show up on the screen
 {
   image(photo1, x, y);
 }
 

  
 
public void moveR()                 // make the character move depends on what arrow key was pressed 
 {
  x = x + 15;
  
  
 }
 public void moveL()                      // make the chracter move left
 {

 x = x - 15;
//x1 = x - 15;
 }
  public void moveU()                   // the chracter jumps 80 unit when the up key was pressed
 {
   //y = y-80;
  // y1 = y - 80;
  
     y = y - initialSpeed;
     initialSpeed = initialSpeed - gravity;
     if(initialSpeed == 0)
     {
       initialSpeed = 50;
     }
  
     //hitBottom();
  
  // while(y<410){
  //xSpeed = xSpeed + gravity;
  //      if (xSpeed > terminal)
  //      {
  //          xSpeed = terminal;
  //      }
  //      y = y + xSpeed;
  // }
  
 }
 
 public void hitBottom()
  {
    if(y>410)
    {
      y=410;
      xSpeed = 0;
    }
  }
 
  

public void gravity()         // when the character is in the air, the gravity will be applyed
{
  /* (l.y < 410 && l.y1 < 410)
  {
   xSpeed = 0;
  }
   else if (l.y >= 410 && b.x > -452 && b.x < -365)        // when the character is at the hole, the gravity will be applyed
   {
       xSpeed = 0;
   }
   
    else if (l.y >= 405 && l.y1 >= 405 && b.x >-572 && b.x <-512)
     {
       
       xSpeed = 0;
   }
     */  
     
          y = y + xSpeed;
          xSpeed = xSpeed + gravity;  
          
         
                                  // citation: http://learningprocessing.com/examples/chp05/example-05-09-gravity
        //if(y>height){
        //  xSpeed= xSpeed*0.95;
        //  y=height;
        //}
      //y1 = y + xSpeed;
      
}

 

}