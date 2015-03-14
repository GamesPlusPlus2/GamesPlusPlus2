void preferences() 
{
  masterController.setGameName("Cat Rescue Simulator 2015");
  myWidth = 800;
  myHeight = 800;
  size(myWidth, myHeight);
}

boolean buttonCenter(int x, int y, int w, int h) 
{
  if (mousePressed && x - w/2 < mouseX && mouseX < x + w/2 && y - h/2 < mouseY && mouseY < y + h/2) 
  {
    return true;
  }
  else 
  {
    return false;
  }
}

void loadImages() {
  blank = loadImage("Object.png");
  grassFloor = loadImage("Grass Floor 800x800.jpg");
  woodFloor = loadImage("Wood Floor 800x800.jpg");
  Bird = loadImage("Bird 100x100.png");
  Cat = loadImage("Cat 100x100.gif");
  Chair = loadImage("Chair 100x100.jpg");
  Girl = loadImage("Girl 100x100.png");
  Mouse = loadImage("Mouse 100x100.png");
  Plant = loadImage("Plant 100x100.gif");
  Rock = loadImage("Rock 100x100.gif");
  Tree = loadImage("Tree 100x100.png");
  
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

