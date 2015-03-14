import ddf.minim.*;


MusicController mc;
Minim soundtrack;
  
int soundtrackRandomizerOutside = int(random(1, 5));
int soundtrackRandomizerInside = int(random(1, 5));


void setup()
{
  soundtrack = new Minim(this);
  mc = new MusicController();
}

void draw()
{
  mc.run();
}

