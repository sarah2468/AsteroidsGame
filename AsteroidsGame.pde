//LINK TO FINISHED PROJECT: https://sarah2468.github.io/AsteroidsGame/
//your variable declarations here
Spaceship Bob = new Spaceship();
Stars[] yo = new Stars[(int)(Math.random()*200)+30];
Asteroid[] hi = new Asteroid[(int)(Math.random()*10)+5];
public void setup() 
{
  //your code here
  size(500, 500);
  for(int a = 0; a < yo.length; a++){
   yo[a] = new Stars();
  }
  for(int o = 0; o < hi.length; o++){
   hi[o] = new Asteroid(); 
  }
}
public void draw() 
{
  //your code here
  background(0);  
  Bob.show();
  Bob.move();
 for(int a = 0; a < yo.length; a++){
   yo[a].show();
  }
  for(int o = 0; o < hi.length; o++){
   hi[o].show();
   hi[o].move();
  }
}

public void keyPressed()
{
  if(key == '1'){
    Bob.accelerate(0.3);
  }
  if(key == '2'){
    Bob.accelerate(-0.08);
  }
  if(key == '3'){
    Bob.turn((int)PI*3);
  }
  if(key == '4'){
  Bob.turn((int)-PI*3);
   
  }
  if(key == '5'){
   Bob.setX((int)(Math.random()*400));
   Bob.setY((int)(Math.random()*400)); 
   Bob.setDirectionX(0);
   Bob.setDirectionY(0);
}

 
}