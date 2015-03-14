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
  size(800, 800);
  blank = loadImage("Object.png");
  grassFloor = loadImage("Grass Floor 800x800.jpg");
  woodFloor = loadImage("Wood Floor 800x800.jpg");
<<<<<<< HEAD
  Bird = loadImage("Bird 100x100");
  Cat = loadImage("Cat 100x100");
  Chair = loadImage("Chair 100x100");
  Girl = loadImage("Girl 100x100");
  Mouse = loadImage("Mouse 100x100");
  Plant = loadImage("Plant 100x100");
  Rock = loadImage("Rock 100x100");
  Tree = loadImage("Tree 100x100");
=======

>>>>>>> origin/master
}

void draw()
{

  Map gameMap = new Map(10, 10, true);
  // map.generate();
  //map.display();
}

