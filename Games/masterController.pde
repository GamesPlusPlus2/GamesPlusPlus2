class MasterController {
  int state;
  String gameName;

  MainMenu mainMenu;
  MusicController musicController;
  InputController inputController;

  MasterController() {
    state = mainMenuState;
    mainMenu = new MainMenu();
    musicController = new MusicController();
    inputController = new InputController();
  }

  void setGameName(String name) {
    gameName = name;
  }

  void setState(int n) {
    state = n;
  }

  void run() {
    background(360);
    switch(state) {
    case 0:
      mainMenu.display();
      setState(mainMenu.update());
      break;
      //gameState
    case 2:
      musicController.gameMusic();
      
      break;
    }
  }
}
