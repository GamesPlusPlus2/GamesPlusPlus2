import ddf.minim.*;

Minim soundtrack = new Minim(this);

MasterController masterController = new MasterController();

final int mainMenuState = 0;
final int introState = 1;
final int gameState = 2;
final int pauseState = 3;
final int winState = 4;
final int loseState = 5;

int myWidth;
int myHeight;

void setup() 
{
  preferences();
}

void draw() 
{
  masterController.run();
}

