class GameController {
  int state;
  MainMenu mainMenu;
  int mainMenuState = 0;
  GameController() {
    state = 0;
    mainMenu = new MainMenu();
  }

  void setState(int n) {
    state = mainMenuState;
  }
  
  void run() {
    switch(state) {
      //main menu
    case mainMenuState:
      mainMenu.display();
      break;
    }
  }
}

