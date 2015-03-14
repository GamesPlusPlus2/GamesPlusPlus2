void preferences() {
  gameController.setGameName("Cat Rescue Simulator 2015");
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  background(360);
  textAlign(CENTER);
}

class MainMenu {
  MainMenu() {
  }

  class display() {
    fill(0);
    textSize(50);
    text("Cat Rescue Simulator 2015", width/2, height/4);
  }
}

