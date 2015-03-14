class InputController 
{
  InputController() 
  {
  }
  String gameInput() 
  {
    if (keyPressed) 
    {
      switch(key) 
      {
      case 'w':
      case 'W':
        return "up";
      case 'd':
      case 'D':
        return "right";
      case 's':
      case 'S':
        return "down";
      case 'a':
      case 'A':
        return "left";
      default:
        return "none";
      }
    }
    else 
    {
      return "none";
    }
  }
}

