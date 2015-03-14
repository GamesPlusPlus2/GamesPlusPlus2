
class Tile
{
  //ugly but it works
  boolean moveUp;
  boolean moveDown;
  boolean moveLeft;
  boolean moveRight;
  
  char charName;
  PImage picture;

  Tile()
  {
    charName = 'g';
    picture = blank;
  }
  void display(int x, int y)
  {
    if(charName != 'g')
      text(charName, x, y);
    image(picture, x, y, width/10, height/10);
  }
}

interface Moveable
{
  //void move(); //should change the move variables
}

class Bird extends Tile implements Moveable
{
  Bird()
  {
    charName = 'b';
    picture = bird;
  }
  void move()
  {
    //
  }
}

class Cat extends Tile implements Moveable
{
  Cat()
  {
    charName = 'c';
    picture = cat;
  }
  void move()
  {
    if (keyPressed == true) {
      if (key == 'w'|| key == 'W') {
        println("Up true");
      }
      else if (key == 'd'|| key == 'D') {
        println("Right true");
      }
      else if (key == 's'|| key == 'S') {
        println("Down true");
      }
      else if (key == 'a'|| key == 'A') {
        println("Left true");
      }
    }
  }
}

class Furniture extends Tile
{
  Furniture()
  {
    charName = 'f';
    picture = chair;
  }
}

class Human extends Tile implements Moveable
{
  Human()
  {
    charName = 'h';
    picture = girl;
  }
  void move()
  {
    int i = (int) random(5);
    moveUp = false;
    moveDown = false;
    moveLeft = false;
    moveRight = false;
    if (i == 1)
    {
      moveUp = true;
    }
    else if (i == 2)
    {
      moveDown = true;
    }
    else if (i == 3)
      moveLeft = true;
    else if (i == 4)
      moveRight = true;
    
    
  }
}

class Mouse extends Tile implements Moveable
{
  Mouse()
  {
    charName = 'm';
    picture = mouse;
  }
  void move()
  {
    //
  }
}

class Plant extends Tile
{
  Plant()
  {
    charName = 'p';
    picture = plant;
  }
}

class Rock extends Tile
{
  Rock()
  {
    charName = 'r';
    picture = rock;
  }
}

class Tree extends Tile
{
  Tree()
  {
    charName = 't';
    picture = tree;
  }
}

