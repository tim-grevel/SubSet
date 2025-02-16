void settings()
{
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
}

void setup()
{
  InitializeCards();
  
  background(BACKGROUND_COLOR);
  
  //PrintCards(cards);
}

void draw()
{  
  switch(currentScreen)
  {
   case TITLE_SCREEN:
     ShowTitleScreen();
   break;
   case GAME_SCREEN:
     ShowGameScreen();
   break;
  }
}

void mousePressed()
{
  switch(currentScreen)
  {
   case TITLE_SCREEN:
     HandleTitleScreenButtons();
   break;
   case GAME_SCREEN:
     HandleCardSelection();
   break;
  }
}

void keyPressed()
{
  if (key == ' ')
  {
    cardsInPile = ShuffleCards(cardsInDeck);
    cardsOnScreen.clear();
    cardsOnScreen.addAll(TakeFromPile(cardsInPile, 12));
    DrawCards();
  }
  
  if (key == ENTER)
  {
    cardsOnScreen.addAll(TakeFromPile(cardsInPile, 3));
    DrawCards();
  }
}
