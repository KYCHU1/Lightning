int startX=315;
int startY=320;
int endX=0;
int endY=600;

void setup () {
  size (600,600);
  background (69,22,214);
}

void draw () {
  fill (232,0,0);
  ellipse (300,200,100,100);
  fill (255);
  fill (232,0,0);
  ellipse (300,300,110,35);
  ellipse (340,300,25,25); //thumb
  ellipse (315,320,30,30); //finger
  ellipse (315,322,20,20);
  ellipse (278,304,20,35); //knuckle
  ellipse (295,304,20,35);
  ellipse (252,310,26,26); //pinky
  ellipse (252,312,16,16);
  boolean inBounds = true;
  stroke (255);
  
   while (inBounds) {
    int randomX = (int)(Math.random()*51) -25;
    int randomY = (int)(Math.random()*9);
    endX = startX + randomX;
    endY = startY + randomY;
    line (startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    if(endX < 0 || endX > 601) {
      inBounds = false;
    }
  }
}

void mousePressed()
{
  startX = 315;
  startY = 320;
  endX = 0;
  endY = 600;
}
