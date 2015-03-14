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
    imageMode(CENTER);
    image(picture, x, y, width/16, height/16);
    imageMode(CORNER);
  }
}

interface Moveable
{
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
    if (keyPressed) 
    {
      switch(key) 
      {
      case 'w':
      case 'W':
        moveUp = true;
        moveRight = false;
        moveDown = false;
        moveLeft = false;
        break;
      case 'd':
      case 'D':
        moveUp = false;
        moveRight = true;
        moveDown = false;
        moveLeft = false;
        break;
      case 's':
      case 'S':
        moveUp = false;
        moveRight = false;
        moveDown = true;
        moveLeft = false;
        break;
      case 'a':
      case 'A':
        moveUp = false;
        moveRight = false;
        moveDown = false;
        moveLeft = true;
        break;
      default:
        break;
      }
    }
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

