void preferences() 
{
  gameController.setGameName("Cat Rescue Simulator 2015");
  size(800, 800);
}

class MainMenu 
{
  MainMenu() {
  }

  void display() 
  {
    colorMode(HSB, 360, 100, 100, 100);
    background(360);
    textAlign(CENTER);
    fill(0);
    textSize(50);
    text("Cat Rescue Simulator 2015", width/2, height/4);
  }
  int update() {
    //if clicked somewhere
    //return gameState
    //else
    return mainMenuState
  }
}

