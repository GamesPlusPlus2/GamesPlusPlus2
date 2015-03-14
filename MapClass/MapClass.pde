
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

  void generate()
  {
    
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
    
  }
  
  
    

}

