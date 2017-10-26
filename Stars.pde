class Stars //note that this class does NOT extend Floater
{
  float a = (float)(Math.random()*2.5);
  int starX, starY;
  //your code here
  public Stars(){
   starX = (int)(Math.random()*500);
   starY = (int)(Math.random()*500);
  }
  public void show(){

  
   ellipse(starX, starY, a, a); 
  }
}