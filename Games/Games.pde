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

Cat cat;

void setup() 
{
  soundtrack = new Minim(this);
  loadImages();
  masterController = new MasterController();
  preferences();
  cat = new Cat();
}

void draw() 
{
  masterController.run();
}
void keyPressed() 
    {
      switch(key) 
      {
      case 'w':
      case 'W':
        cat.moveUp = true;
        cat.moveRight = false;
        cat.moveDown = false;
        cat.moveLeft = false;
        break;
      case 'd':
      case 'D':
        cat.moveUp = false;
        cat.moveRight = true;
        cat.moveDown = false;
        cat.moveLeft = false;
        break;
      case 's':
      case 'S':
        cat.moveUp = false;
        cat.moveRight = false;
        cat.moveDown = true;
        cat.moveLeft = false;
        break;
      case 'a':
      case 'A':
        cat.moveUp = false;
        cat.moveRight = false;
        cat.moveDown = false;
        cat.moveLeft = true;
        break;
      }
    }
