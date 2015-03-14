import ddf.minim.*;
Minim soundtrack;
AudioPlayer musicPlayer;

void setup()
{
 size(200,200); 
 soundtrack = new Minim(this);
 musicPlayer = soundtrack.loadFile("Laboratory.mp3");
 musicPlayer.play();
}

void draw()
{

}
