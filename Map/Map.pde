class Map
{
  int cols, rows;
  String[][] map;
  boolean isOutside = true;
  
  PImage ground;
  
   
  
  Map(c, r, o)
  {
    cols = c;
    rows = r;
    map = [cols] [rows];
    isOutside = o;
    
    if (isOutside)
      ground = loadImage("Grass Floor 800x800.jpg");
    else
      ground = loadImage("Wood Floor 800x800.jpg");
    
    image(ground, 0, 0);
    
    //fills the map with a ground
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; i < rows; j++)
      {
        map[i][j] = "ground";
      }
    }
    
  }
  //for the generation of random variables
  void generate()
  {      
    //implement random location items
      
  }
  

  
  void display()
  {
    for (int i = 0; i < cols; i++)
    {
      for (int j = 0; j < rows; j++)
      {
        if(isOutside)
          displayOutside(map[i][j]);        
        else //Inside
          displayInside(map[i][j]); 
      }
    }
  }
  //won't ever be called outside this class
  void displayOutside(item)
  {
    switch(item) {
      case "cat":
        cat.display();
        break;
      case "tree":
        tree.display();
        break;
      case "plant":
        plant.display();
        break;
      case "bird":
        bird.display();
        break;
      case "rock":
        rock.display();
        break;
      case "mouse":
        mouse.display();
        break;
      default: //should just be ground
        break;
    }
    
  }
  //won't ever be called outside this class
  void displayInside(item)
  {
    switch(item) {
      case "cat":
        cat.display();
        break;
      case "furniture":
        furniture.display();
        break;
      case "mouse":
        mouse.display();
        break;
      case "human":
        human.display();
        break;
      default: //should just be ground;
        break;
    }
  }
  
  
  
}
