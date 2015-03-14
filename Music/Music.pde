import ddf.minim.*;
Minim soundtrack;
AudioPlayer musicPlayerOutside1, musicPlayerOutside2, musicPlayerOutside3, musicPlayerOutside4, musicPlayerOutside5, musicPlayerInside1, musicPlayerInside2, musicPlayerInside3, musicPlayerInside4, musicPlayerInside5;

int soundtrackRandomizerOuside = int(random(1,5));
int soundtrackRandomizerInside = int(random(1,5));
boolean isOutside;

void setup()
{
 size(200,200); 
 soundtrack = new Minim(this);
 
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
// musicPlayer.play();
 
 if(isOutside == true)
 {
   if(soundtrackRandomizerOuside == 1)
   {
     musicPlayerOutside1.play();
   }
   if(soundtrackRandomizerOuside == 2)
   {
     musicPlayerOutside2.play();
   }
   if(soundtrackRandomizerOuside == 3)
   {
     musicPlayerOutside3.play();
   }
   if(soundtrackRandomizerOuside == 4)
   {
     musicPlayerOutside4.play();
   }
   if(soundtrackRandomizerOuside == 5)
   {
     musicPlayerOutside5.play();
   }
 }
 else
 {
   if(soundtrackRandomizerInside == 1)
   {
     musicPlayerInside1.play();
   }
   if(soundtrackRandomizerInside == 2)
   {
     musicPlayerInside2.play();
   }
   if(soundtrackRandomizerInside == 3)
   {
     musicPlayerInside3.play();
   }
   if(soundtrackRandomizerInside == 4)
   {
     musicPlayerInside4.play();
   }
   if(soundtrackRandomizerInside == 5)
   {
     musicPlayerInside5.play();
   }
 }
}

void draw()
{

}
