void preferences() 
{
  masterController.setGameName("Cat Rescue Simulator 2015");
  size(800, 800);
}

boolean buttonCenter(int x, int y, int w, int h) 
{
  if (x - w/2 < mouseX && mouseX < x + w/2 && y - h/2 < mouseY && mouseY < y + h/2) 
  {
    return true;
  }
  else 
  {
    return false;
  }
}


class MainMenu 
{
  MainMenu() 
  {
  }

  void display() 
  {
    colorMode(HSB, 360, 100, 100, 100);
    textAlign(CENTER);
    fill(0);
    textSize(50);
    text("Cat Rescue Simulator 2015", width/2, height/4);
    rectMode(CENTER);
    //button
    fill(0);
    rect(width/2, height*3/4, width/2, height/4);
    textSize(20);
    text("Begin your adventure", width/2, height*3/4);
  }
  int update() {
    if (buttonCenter(width/2, height*3/4, width/2, height/4)) {
      return introState;
    } 
    else {
      return mainMenuState;
    }
  }
}

