import ddf.minim.*;


MusicController mc;
Minim soundtrack;
  
void setup()
{
  soundtrack = new Minim(this);
  mc = new MusicController();
}

void draw()
{
  mc.run();
}

