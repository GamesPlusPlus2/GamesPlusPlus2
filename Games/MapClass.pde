
class Map
{
  int cols, rows;
  Tile [][] map;

  boolean isOutside = true;

  PImage ground;


  //constructor
  Map(int c, int r, boolean o)
  {
    cols = c;
    rows = r;

    isOutside = o;

    if (isOutside)
    {
      ground = grassFloor;
    }
    else
    {
      ground = woodFloor;
    }
    
    map = new Tile [cols][rows];

    image(ground, 0, 0);

    //fills the map with a ground
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        map[i][j] = new Tile();
        //println(10*i+j);
      }
    }
    
  }

  void generate() //to do
  {
    map[0][rows/2] = new Cat();
//    int i =5;
//     while ( i > 0)
//    {
//      i++;
//    } 
  }
  void display()
  {
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        map[i][j].display(i, j); //displays each individual tile
      }
    }
  }
  void update()
  {
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        Tile item = map[i][j];
        if(item instanceof Moveable)
        {
          //println(item.charName);
          if (item.moveUp && map[i][j-1].charName == 'g')
          {
            map[i][j-1] = item;
          }
          if (item.moveDown && map[i][j+1].charName == 'g')
          {
            map[i][j+1] = item;
          }
          if (item.moveLeft && map[i-1][j].charName == 'g')
          {
            map[i-1][j] = item;
          }
          else if (item.moveRight && map[i+1][j].charName == 'g')
          {
            map[i+1][j] = item;
          }
          else
            break;
          item = new Tile();
        }
      }
    }
  }
  
  
    

}

