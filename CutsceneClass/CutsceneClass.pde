class Cutscene 
{
  Cutscene() 
  {
  };
  
  void backgroundColor() 
  {
  background(0);
  }
  
  void plotIntroText() 
  {
  backgroundColor();
  image(cat2,0,0);
    
  textAlign(CENTER);
  textFont(font, 16);
  text("One day in the land of Tiruk, disaster struck in the peaceful catdom of Kadrak. The",275,200);
  text("king's favorite yarn and beautiful daughter had been catnapped by an evil sorceress.",275,225);
  text("A valiant knight travelled to save the princess from the evil sorceress' tower. The",275,250);
  text("sorceress knew that the knight would try to rescue the princess and she used her evil",275,275);
  text("voodoo powers to enchant and animate objects to stop the knight on his quest.",275,300);
  }
  
  void plotEndingText() 
  {
  backgroundColor();
  image(cat1,150,600,100,100);
    
  textAlign(CENTER);
  textFont(font, 18);
  text("After the cats finally reached to the evil sorceress, they realized she was just a cute",420,325);
  text("little girl. She was so overwhelmed by the cuteness of all the cats and decided to let their",420,350);
  text("friend go and gave back all the yarn. After their crazy adventure for the day, the cats",420,375);
  text("decided to go back home and relax and take over the internet.",420,400);
  text("THE END... or is it?",420,425);
  text("Nah, it's the end.",420,475);
  }
  
  void plotYouLoseText() 
  {
    backgroundColor();
    
  textAlign(CENTER);
  textFont(font, 32);
  text("Congratulations! You lose!",420,375);
  text("(No cats were harmed in the making of this game)",420,400);
  }
}





