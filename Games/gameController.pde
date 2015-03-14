class GameController {
  Map gameMap;
  String motion = "none";
  
  GameController() 
  {
    gameMap = new Map(50, 50, true);
    gameMap.generate();
  }
  
  void input(String input) {
   motion = input;
  }
  
  void run() {
    gameMap.display();
    gameMap.update();
    
  }
}

