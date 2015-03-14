class Tile
{
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
  }

}

class Human extends Tile implements Moveable
{
  Human()
  {
    charName = 'h';
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
  }
}

class Rock extends Tile
{
  Rock()
  {
    charName = 'r';
  }
}

class Tree extends Tile
{
  Tree()
  {
    charName = 't';
  }
}



