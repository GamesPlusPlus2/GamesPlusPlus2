class Tile
{
  //ugly but it works
  boolean moveUp = false;
  boolean moveDown = false;
  boolean moveLeft = false;
  boolean moveRight = false;
  
  char charName;
  PImage picture;

  Tile()
  {
    charName = 'g';
    picture = blank;
  }
  void display(int x, int y)
  {
    image(picture, x, y);
  }
}

interface Moveable
{
  boolean moveUp = false;
  boolean moveDown = false;
  boolean moveLeft = false;
  boolean moveRight = false;

  void move(); //should change the move variables
}

class Bird extends Tile implements Moveable
{
  Bird()
  {
    charName = 'b';
    picture = Bird;
  }
  void move()
  {
  }
}

class Cat extends Tile implements Moveable
{
  Cat()
  {
    charName = 'c';
    picture = Cat;
  }
  void move()
  {

  }
}

class Furniture extends Tile
{
  Furniture()
  {
    charName = 'f';
    picture = Chair;
  }
}

class Human extends Tile implements Moveable
{
  Human()
  {
    charName = 'h';
    picture = Girl;
  }
  void move()
  {
  }
}

class Mouse extends Tile implements Moveable
{
  Mouse()
  {
    charName = 'm';
    picture = Mouse;
  }
  void move()
  {
  }
}

class Plant extends Tile
{
  Plant()
  {
    charName = 'p';
    picture = Plant;
  }
}

class Rock extends Tile
{
  Rock()
  {
    charName = 'r';
    picture = Rock;
  }
}

class Tree extends Tile
{
  Tree()
  {
    charName = 't';
    picture = Tree;
  }
}

