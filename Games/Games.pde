MasterController masterController = new MasterController();

final int mainMenuState = 0;
final int introState = 1;
final int gameState = 2;
final int pauseState = 3;
final int endState = 4;

void setup() 
{
  preferences();  
}

void draw() 
{
  masterController.run();
}
