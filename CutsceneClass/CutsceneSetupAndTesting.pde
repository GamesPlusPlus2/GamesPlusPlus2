Cutscene myCutscene;
PFont font;

void setup() 
{
  size(800,800);
  rectMode(CENTER);
  myCutscene = new Cutscene();
  font = createFont("Times New Roman",16,true);
}

void draw() 
{
  myCutscene.backgroundColor();
  myCutscene.plotIntroText();
  myCutscene.plotEndingText();
  myCutscene.plotYouLoseText();
}
