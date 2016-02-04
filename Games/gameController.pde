class GameController {
  Map gameMap;
  
  GameController() 
  {
    gameMap = new Map(50, 50, false);
    gameMap.generate();
  }
  
  void run() {
    gameMap.display();
    gameMap.update();
  }
}

