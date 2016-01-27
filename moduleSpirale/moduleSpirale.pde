/* 
 * Fede modulo cerchi concentrici
 * 27/01/16
 */    
PImage img1, img2,img3, img4;
int w1=300,h1,w2=200,h2,w3=100,h3,w4=50,h4;
void setup()
{
  size(800,800);
  img1 = loadImage("img/png/cerchio1.png");
  img2 = loadImage("img/png/cerchio2.png");
  img3 = loadImage("img/png/cerchio3.png");
  img4 = loadImage("img/png/cerchio4.png");
  h1=w1;
  h2=w2;
  h3=w3;
  h4=w4;
}

void draw()
{
  translate(200, 200);
  //translate(width/2, height/2);
  scale(1);
  image(img1,w1/2,h1/2,w1,h1);
  image(img2,w2/2,h2/2,w2,h2);
  image(img3,w3/2,h3/2,w3,h3);
  image(img4,w4/2,h4/2,w4,h4);
  
}

void rotateCircle(int i)
{
rotate(PI/3.0); 
}