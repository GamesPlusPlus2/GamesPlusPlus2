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
        break;
      case 'd':
      case 'D':
        return "right";
        break;
      case 's':
      case 'S':
        return "down";
        break;
      case 'a':
      case 'A':
        return "left";
        break;
      }
    }
  }
}

