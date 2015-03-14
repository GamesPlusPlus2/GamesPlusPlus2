class Controller {
  int state;
  int mainMenuState = 0;

  MainMenu mainMenu;

  Controller() {
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
    switch(state) {
    case mainMenuState:
      mainMenu.display();
      setState(mainMenu.update());
      break;
    }
  }
}

