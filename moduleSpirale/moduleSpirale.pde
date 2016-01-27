/* 
 * Fede modulo cerchi concentrici
 * 27/01/16
 */
PImage img1, img2, img3, img4;
int w1=300, h1, w2=200, h2, w3=100, h3, w4=50, h4;
int den; int counter;

void setup()
{
  size(800, 800);
  img1 = loadImage("img/png/1.png");
  img2 = loadImage("img/png/2.png");
  img3 = loadImage("img/png/3.png");
  img4 = loadImage("img/png/4.png");
  h1=w1;
  h2=w2;
  h3=w3;
  h4=w4;
}

void draw()
{
  background(0);
  //translate(width/2, height/2);
  scale(1);
  
  for (int a=1; a<=4; a++)
  {
    rotateCircle(a);
  }
  
  updateCounters();
}

void updateCounters()
{
 counter++; 
}

void rotateCircle(int i)
{
  pushMatrix();
  translate(200, 200);
  if (i==1)
  {
    rotate(counter*PI/180); 
    translate(-img1.width/2, -img1.height/2);
    image(img1, 0, 0, w1, h1);
  } else if (i==2)
  {
    rotate(-counter*PI/180); 
    translate(-img2.width/2, -img2.height/2);
    image(img2, 0, 0, w2, h2);
  } else if (i==3)
  {
    rotate(counter*PI/180); 
    translate(-img3.width/2, -img3.height/2);
    image(img1, 0, 0, w3, h3);
  } else if (i==4)
  {
    rotate(-counter*PI/180); 
    translate(-img4.width/2, -img4.height/2);
    image(img4, 0, 0, w4, h4);
  }
  popMatrix();
}