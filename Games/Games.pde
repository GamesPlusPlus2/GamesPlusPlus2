GameController gameController = new GameController();

int mainMenuState = 0;
int introState = 1;
int gameState = 2;
int pauseState = 3;
int endState = 4;

void setup() 
{
  preferences();  
}

void loop() 
{
  gameController.run();
}
