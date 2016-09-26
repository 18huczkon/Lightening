int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int strokeColorR = 0;
int strokeColorG = 0;
int strokeColorB = 0;
int randomX = 0;
int randomY = 0;
void setup()
{
  strokeWeight(2);
  background(0);
  size(300,300);
}
void draw()
{
  strokeColorR = (int)(Math.random() * 255);
  strokeColorG = (int)(Math.random() * 255);
  strokeColorB = (int)(Math.random() * 255);
  stroke(strokeColorR, strokeColorG, strokeColorB);
  while (endX < 300){
     line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    randomY = (int)(Math.random() * 9);
    endX = startX + randomX;
    randomX = (int)(Math.random() * 19) - 9;
    endY = startY + randomY;
  }
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;

}
void keyPressed()
{
  background(0);
}
