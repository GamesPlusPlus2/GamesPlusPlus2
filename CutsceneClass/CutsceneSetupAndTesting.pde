Cutscene myCutscene;
PFont font;

PImage cat1, cat2;

void setup() 
{
  size(800,800);
  rectMode(CENTER);
  myCutscene = new Cutscene();
  font = createFont("Times New Roman",16,true);
  
  cat1 = loadImage("Cat1.png");
  cat2 = loadImage("Cat2.png");
}

void draw() 
{
  myCutscene.plotIntroText();
  myCutscene.plotEndingText();
  myCutscene.plotYouLoseText();
}
