class MusicController 
{

  AudioPlayer musicPlayerOutside1, musicPlayerOutside2, musicPlayerOutside3, musicPlayerOutside4, musicPlayerOutside5, musicPlayerInside1, musicPlayerInside2, musicPlayerInside3, musicPlayerInside4, musicPlayerInside5;
  boolean isOutside = false;
  int seed = int(random(1, 5));

  MusicController() 
  {
    musicPlayerOutside1 = soundtrack.loadFile("Laboratory.mp3");
    musicPlayerOutside2 = soundtrack.loadFile("Easygoingness.mp3");
    musicPlayerOutside3 = soundtrack.loadFile("Village.mp3");
    musicPlayerOutside4 = soundtrack.loadFile("Over the sky.mp3");
    musicPlayerOutside5 = soundtrack.loadFile("Noisy Times.mp3");
    musicPlayerInside1 = soundtrack.loadFile("The Limit.mp3");
    musicPlayerInside2 = soundtrack.loadFile("Precaution.mp3");
    musicPlayerInside3 = soundtrack.loadFile("OPERATION SKULD.mp3");
    musicPlayerInside4 = soundtrack.loadFile("Beginning of fight.mp3");
    musicPlayerInside5 = soundtrack.loadFile("Gate of Steiner.mp3");
  }

  void leaveArea() 
  {
    isOutside = !isOutside;
    seed = int(random(1, 5));
  }
  void run() 
  {

    if (isOutside == true)
    {
      switch (seed) 
      {
      case 1:
        musicPlayerOutside1.play();
//        musicPlayerOutside1.rewind();
        break;
      case 2:
        musicPlayerOutside2.play();
//        musicPlayerOutside2.rewind();
        break;
      case 3:
        musicPlayerOutside3.play();
//        musicPlayerOutside3.rewind();
        break;
      case 4:
        musicPlayerOutside4.play();
//        musicPlayerOutside4.rewind();
        break;
      case 5:
        musicPlayerOutside5.play();
//        musicPlayerOutside5.rewind();
        break;
      }
    } 
    else
    {
      switch (seed)
      {
      case 1:
        musicPlayerInside1.play();
//        musicPlayerInside1.rewind();
        break;
      case 2:
        musicPlayerInside2.play();
//        musicPlayerInside2.rewind();
        break;
      case 3:
        musicPlayerInside3.play();
//        musicPlayerInside3.rewind();
        break;
      case 4:
        musicPlayerInside4.play();
//        musicPlayerInside4.rewind();
        break;
      case 5:
        musicPlayerInside5.play();
//        musicPlayerInside5.rewind();
        break;
      }
    }
  }
}

