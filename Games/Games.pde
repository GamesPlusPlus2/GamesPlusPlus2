import ddf.minim.*;

Minim soundtrack;

MasterController masterController;

final int mainMenuState = 0;
final int introState = 1;
final int gameState = 2;
final int pauseState = 3;
final int winState = 4;
final int loseState = 5;

int myWidth;
int myHeight;

//images
PImage blank;
PImage grassFloor;
PImage woodFloor;
PImage Bird;
PImage Cat;
PImage Chair;
PImage Girl;
PImage Mouse;
PImage Plant;
PImage Rock;
PImage Tree;

void setup() 
{
  soundtrack = new Minim(this);
  loadImages();
  masterController = new MasterController();
  preferences();
}

void draw() 
{
  masterController.run();
}

