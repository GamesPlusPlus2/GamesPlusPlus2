class GameController {
  int state;
  MainMenu mainMenu;
  GameController() {
    state = 0;
    mainMenu = new MainMenu();
  }

  void setState(int n) {
    state = 
  }
  
  void run() {
    switch(state) {
      //main menu
    case 0:
      mainMenu.display();
      break;
    }
  }
}

