

PImage blank;
PImage grassFloor;
PImage woodFloor;

void setup()
{
  size(800, 800);
  blank = loadImage("Tile.png");
  grassFloor = loadImage("Grass Floor 800x800.jpg");
  woodFloor = loadImage("Wood Floor 800x800.jpg");'

}

void draw()
{
  
  Map gameMap = new Map(10,10,true);
 // map.generate();
  //map.display();
}
