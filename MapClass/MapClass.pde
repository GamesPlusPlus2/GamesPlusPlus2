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
    map = new Tile [cols] [rows];

    image(ground, 0, 0);

    //fills the map with a ground
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        map[i][j] = new Tile();
        println(10*i+j);
      }
    }
  }
  //for the generation of random variables
  void generate()
  {      
    //implement random location items
  }



  //    void display()
  //    {
  //      for (int i = 0; i < cols; i++)
  //      {
  //        for (int j = 0; j < rows; j++)
  //        {
  //          if(isOutside)
  //            displayOutside(map[i][j]);        
  //          else //Inside
  //            displayInside(map[i][j]); 
  //        }
  //      }
  //    }
  //    //won't ever be called outside this class
  //    void displayOutside(Object item)
  //    {
  //      switch(item.charName) {
  //        case 'c':  //cat
  //          cat.display();
  //          break;
  //        case 't':  //tree
  //          tree.display();
  //          break;
  //        case 'p':  //plant
  //          plant.display();
  //          break;
  //        case 'b':  //bird
  //          bird.display();
  //          break;
  //        case 'r':  //rock
  //          rock.display();
  //          break;
  //        case 'm':  //mouse
  //          mouse.display();
  //          break;
  //        default: //should just be ground
  //          break;
  //      }
  //      
  //    }
  //    //won't ever be called outside this class
  //    void displayInside(Object item)
  //    {
  //      switch(item.charName) {
  //        case 'c':  //cat
  //          cat.display();
  //          break;
  //        case 'f':  //furniture
  //          furniture.display();
  //          break;
  //        case 'm':  //mouse
  //          mouse.display();
  //          break;
  //        case 'h':  //human
  //          human.display();
  //          break;
  //        default: //should just be ground;
  //          break;
  //      }
  //    }
}

