/* 
 * Fede modulo cerchi concentrici
 * 27/01/16
 */
PImage img1, img2, img3, img4;
int den; 
int counter;
float scaleFactor = 0.2;
int centri = 400;
float timerMain,timer1,timer2;

boolean cond = false;


void setup()
{
  size(800, 800);
  img1 = loadImage("img/png/1.png");
  img2 = loadImage("img/png/2.png");
  img3 = loadImage("img/png/3.png");
  img4 = loadImage("img/png/4.png");
  timerMain = millis();
}

void draw()
{
  
  timerMain = millis();
  background(0);
  scale(scaleFactor);
  println(timerMain);
  for (int a=1; a<=4; a++)
  {
    if (timerMain < 3000 || cond)
    { 
      drawRotateCircle(a,0);
    }
    else
    {
      drawRotateCircle(a,counter/2);
      updateCounters();
      if (counter == 360*2)
       {
         cond = true;
       }
    }
  }
}

void updateCounters()
{
  counter++;
}

void drawRotateCircle(int i,int counterI)
{
  pushMatrix();
  translate(centri/scaleFactor, centri/scaleFactor);
  if (i==1)
  {
    rotate(counterI*PI/180); 
    translate(-img1.width/2, -img1.height/2);
    image(img1, 0, 0);
  } else if (i==2)
  {
    rotate(-counterI*PI/180); 
    translate(-img2.width/2, -img2.height/2);
    image(img2, 0, 0);
  } else if (i==3)
  {
    rotate(counterI*PI/180); 
    translate(-img3.width/2, -img3.height/2);
    image(img3, 0, 0);
  } else if (i==4)
  {
    rotate(-counterI*PI/180); 
    translate(-img4.width/2, -img4.height/2);
    image(img4, 0, 0);
  }
  popMatrix();
}