class MusicController 
{
  
  AudioPlayer musicPlayerOutside1, musicPlayerOutside2, musicPlayerOutside3, musicPlayerOutside4, musicPlayerOutside5, musicPlayerInside1, musicPlayerInside2, musicPlayerInside3, musicPlayerInside4, musicPlayerInside5;
  boolean isOutside = false;

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

  void run() 
  {

    if (isOutside == true)
    {
      if (soundtrackRandomizerOutside == 1)
      {
        musicPlayerOutside1.play();
      }
      if (soundtrackRandomizerOutside == 2)
      {
        musicPlayerOutside2.play();
      }
      if (soundtrackRandomizerOutside == 3)
      {
        musicPlayerOutside3.play();
      }
      if (soundtrackRandomizerOutside == 4)
      {
        musicPlayerOutside4.play();
      }
      if (soundtrackRandomizerOutside == 5)
      {
        musicPlayerOutside5.play();
      }
    } else
    {
      if (soundtrackRandomizerInside == 1)
      {
        musicPlayerInside1.play();
      }
      if (soundtrackRandomizerInside == 2)
      {
        musicPlayerInside2.play();
      }
      if (soundtrackRandomizerInside == 3)
      {
        musicPlayerInside3.play();
      }
      if (soundtrackRandomizerInside == 4)
      {
        musicPlayerInside4.play();
      }
      if (soundtrackRandomizerInside == 5)
      {
        musicPlayerInside5.play();
      }
    }
  }
}

