PImage blank;
PImage grassFloor;
PImage woodFloor;
PImage bird;
PImage cat;
PImage chair;
PImage girl;
PImage mouse;
PImage plant;
PImage rock;
PImage tree;


Map gameMap;
void setup()
{
  size(800, 800);
  imageMode(CENTER);
  
  blank = loadImage("Object.png");
  grassFloor = loadImage("Grass Floor 800x800.jpg");
  woodFloor = loadImage("Wood Floor 800x800.jpg");
  
  bird = loadImage("Bird 100x100.png");
  cat = loadImage("Cat 100x100.gif");
  chair = loadImage("Chair 100x100.jpg");
  girl = loadImage("Girl 100x100.png");
  mouse = loadImage("Mouse 100x100.jpg");
  plant = loadImage("Plant 100x100.gif");
  rock = loadImage("Rock 100x100.gif");
  tree = loadImage("Tree 100x100.jpg");
  
  gameMap = new Map(25,25, true);
  gameMap.generate();
  
  textSize(25);

}

void draw()
{


  gameMap.display();
  gameMap.update();

}

void mousePressed()
{
    if(gameMap.isOutside)
    {
      gameMap = new Map(25,25,false);
      gameMap.generate();
    }
    //gameMap.isOutside = false;
  else if(! gameMap.isOutside)
  {
    gameMap = new Map(25,25,true);
      gameMap.generate();
  }
    //gameMap.isOutside = true;
}

