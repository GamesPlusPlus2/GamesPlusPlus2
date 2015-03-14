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
  textAlign(CENTER);
  textFont(font, 16);
  text("One day in the land of Tiruk, disaster struck in the peaceful catdom of Kadrak. The",420,350);
  text("king's favorite yarn and beautiful daughter had been catnapped by an evil sorceress.",420,375);
  text("A valiant knight travelled to save the princess from the evil sorceress' tower. The",420,400);
  text("sorceress knew that the knight would try to rescue the princess and she used her evil",420,425);
  text("voodoo powers to enchant and animate objects to stop the knight on his quest.",420,450);
  }
  
  void plotEndingText() 
  {
  textAlign(CENTER);
  textFont(font, 18);
  text("After the cats finally reached to the evil sorceress, they realized she was just a cute",420,325);
  text("little girl. She was so overwhelmed by the cuteness of all the cats and decided to let their",420,350);
  text("friend go and gave back all the yarn. After their crazy adventure for the day, the cats",420,375);
  text("decided to go back home and relax and take over the internet.",420,400);
  text("THE END... or is it?",420,425);
  text("Nah, it's the end.",420,475);
  text("Good use of cats, right?",420,500);
  }
  
  void plotYouLoseText() 
  {
  textAlign(CENTER);
  textFont(font, 32);
  text("Congratulations! You lose!",420,375);
  text("(No cats were harmed in the making of this game)",420,400);
  }
}





