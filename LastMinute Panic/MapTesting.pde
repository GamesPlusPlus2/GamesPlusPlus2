PImage blank;
PImage grassFloor;
PImage woodFloor;


Map gameMap;
void setup()
{
  size(800, 800);
  imageMode(CENTER);
  
  blank = loadImage("Object.png");
  grassFloor = loadImage("Grass Floor 800x800.jpg");
  woodFloor = loadImage("Wood Floor 800x800.jpg");
  
  gameMap = new Map(25,25, true);
  gameMap.generate();
  
  textSize(25);

}

void draw()
{


  gameMap.display();
  gameMap.update();

}

