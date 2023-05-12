PImage a , b;
int x = 100, x2 = 0;
double XChange = 1 ;
float XRadians, SolarVelocity, Luminosity, StarArea = PI * sq(100);
float r1, d, r2;

void setup()
{
  background(0);
  size(1600,800);
  a = loadImage("Spectrum.png");
  b = loadImage("Spectrum.png");
  
}

void draw()
{
  background(0);
  noStroke();
  image(a,30,670,500,100);
  image(b,30,550,500,100);
  fill(0);
  
  rect(100,670,10,100); //Still square
  
  
  
  x2+=1;
  
  XRadians = (PI*x2)/180;
  
  fill(250, 150, 4);
  ellipse ( 1150 - (30 * cos(XRadians)) , 450-(30 * sin(XRadians)),200,200); //Star
  
  
  
  
  fill(250);
  ellipse(1150 + (250 * cos(XRadians)),450 +(250 * sin(XRadians)),50,50); //Planet
  
  
  SolarVelocity = 10*(345 * cos(XRadians) - 7 * sin(XRadians) * cos(XRadians) - 460 * sin(XRadians))*sqrt(16*sq(cos(XRadians)) + 9 * sq(sin(XRadians))+920 * cos(XRadians) + 690 * sin(XRadians) + 26450)/(16* sq(cos(XRadians)) + 9 * sq(sin(XRadians)) + 920 * cos(XRadians) + 690 * sin(XRadians) + 26450);
  rect(1150,780,50,20);
  
  fill(0);
  rect( SolarVelocity * -1  +100 ,550,10,100);
  
  fill(250);
  ellipse(300,375,200,200);
  
  r1 = 100;
  r2 = 25;
  d = 30 * cos(XRadians) - 250 * cos(XRadians);
  
  if((300 +(250 * sin(XRadians))) > 300)
  {
  fill (0);
  ellipse((300 - ((30 * cos(XRadians)-(250 * cos(XRadians))))),375,50,50);
  }
  

  
}
