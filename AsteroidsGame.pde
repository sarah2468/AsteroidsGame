//LINK TO FINISHED PROJECT: https://sarah2468.github.io/AsteroidsGame/
//your variable declarations here
Spaceship Bob = new Spaceship();
Stars[] yo = new Stars[(int)(Math.random()*200)+30];
ArrayList <Asteroid> nums;
//Asteroid[] hi = new Asteroid[(int)(Math.random()*10)+5];
public void setup() 
{
  //your code here
  size(500, 500);
  for (int a = 0; a < yo.length; a++) {
    yo[a] = new Stars();
  }
  nums = new ArrayList <Asteroid>();
  //for(int o = 0; o < hi.length; o++){
  //  hi[o] = new Asteroid(); 
  // }
  for (int a = 0; a < (int)(Math.random()*10+5); a++) {
    nums.add(a, new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);  
  Bob.show();
  Bob.move();
  for (int a = 0; a < yo.length; a++) {
    yo[a].show();
  }
  for (int o = 0; o < nums.size(); o++) {
    nums.get(o).show();
    nums.get(o).move();
    if((dist(Bob.getX(), Bob.getY(), nums.get(o).getX(), nums.get(o).getY()) <= 24)){
    nums.remove(o);
  }
  }
  
}

public void keyPressed()
{
  if (key == '1') {
    Bob.accelerate(0.3);
  }
  if (key == '2') {
    Bob.accelerate(-0.08);
  }
  if (key == '3') {
    Bob.turn((int)PI*3);
  }
  if (key == '4') {
    Bob.turn((int)-PI*3);
  }
  if (key == '5') {
    Bob.setX((int)(Math.random()*400));
    Bob.setY((int)(Math.random()*400)); 
    Bob.setDirectionX(0);
    Bob.setDirectionY(0);
  }
}