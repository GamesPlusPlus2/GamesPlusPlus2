class MusicController 
{
  AudioPlayer[][] musicPlayer = new AudioPlayer[2][5];
  boolean isInside = false;
  int seed = int(random(4.9));
  int oldTime, songLength;

  MusicController() 
  {
    //outside

    musicPlayer[0][0] = soundtrack.loadFile("Laboratory.mp3");
    musicPlayer[0][1] = soundtrack.loadFile("Easygoingness.mp3");
    musicPlayer[0][2] = soundtrack.loadFile("Village.mp3");
    musicPlayer[0][3] = soundtrack.loadFile("Over the sky.mp3");
    musicPlayer[0][4] = soundtrack.loadFile("Noisy Times.mp3");
    print("test");
    //inside
    musicPlayer[1][0] = soundtrack.loadFile("The Limit.mp3");
    musicPlayer[1][1] = soundtrack.loadFile("Precaution.mp3");
    musicPlayer[1][2] = soundtrack.loadFile("OPERATION SKULD.mp3");
    musicPlayer[1][3] = soundtrack.loadFile("Beginning of fight.mp3");
    musicPlayer[1][4] = soundtrack.loadFile("Gate of Steiner.mp3");
  }

  void enterArea() 
  {
    isInside = !isInside;
    seed = int(random(4.9));
    oldTime = millis();
  }
  void gameMusic() 
  {
    musicPlayer[int(isInside)][seed].play();
    if (millis() - oldTime > 60000) {
      musicPlayer[int(isInside)][seed].pause();
      seed = int(random(4.9));
      musicPlayer[int(isInside)][seed].rewind();
      oldTime = millis();
    }
  }
}

