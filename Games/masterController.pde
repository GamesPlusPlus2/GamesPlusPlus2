class MasterController {
  int state;
  String gameName;

  MainMenu mainMenu;
  MusicController musicController;
  InputController inputController;
  GameController gameController;

  MasterController() {
    state = mainMenuState;
    mainMenu = new MainMenu();
    musicController = new MusicController();
    inputController = new InputController();
    gameController = new GameController();
  }

  void setGameName(String name) {
    gameName = name;
  }

  void setState(int n) {
    state = n;
  }

  void run() {
      background(0);
    switch(state) {
    case 0:

      mainMenu.display();
      setState(mainMenu.update());
      break;
      //gameState
      //change to 2 once cutscenes are thing
    case 1:
      gameController.input(inputController.gameInput());
      gameController.run();
      print("test");
      musicController.gameMusic();
      
      break;
    }
  }
}

