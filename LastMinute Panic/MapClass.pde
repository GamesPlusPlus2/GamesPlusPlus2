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

    image(ground, width/2, height/2);

    //fills the map with a ground
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        map[i][j] = new Tile();
      }
    }
    
  }

  void generate() //to do
  {
    int x, y;
    map[0][rows/2] = new Cat();
    
    if (isOutside)
    {
      //trees
      for(float amount = random(1, 5); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Tree();
        }
      }
      //plants
      for(float amount = random(1, 15); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Plant();
        }
      }
      //birds
      for(float amount = random(1, 10); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Bird();
        }
      }
      //rocks
      for(float amount = random(1, 10); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Rock();
        }
      }
      //mice
      for(float amount = random(1, 10); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Mouse();
        }
      }
    }
    else
    {
      //furniture
      for(float amount = random(1, 5); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Furniture();
        }
      }
      //mice
      for(float amount = random(1, 10); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Mouse();
        }
      }
      //humans
      for(float amount = random(1, 3); amount >= 0; amount --)
      {
        x = (int) random(cols);
        y = (int) random(rows);
        if (map[x][y].charName == 'g')
        {
          map[x][y] = new Human();
        }
      }
    }
  }
  void display()
  {
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        map[i][j].display(i * width/cols, j * height/rows); //displays each individual tile
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
          //item.move();
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

