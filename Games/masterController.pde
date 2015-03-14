class MasterController {
  int state;
  int mainMenuState = 0;
  String gameName;

  MainMenu mainMenu;

  MasterController() {
    state = mainMenuState;
    mainMenu = new MainMenu();
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
    }
  }
}

