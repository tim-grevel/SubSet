void settings()
{
  size(SCREEN_WIDTH, SCREEN_HEIGHT);  
}

void setup()
{
  InitializeCards();
  
  background(BACKGROUND_COLOR);
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
  switch(currentScreen)
  {
   case GAME_SCREEN:
    if (key == ' ')
    {
      StartGame();
    }
    
    if (key == ENTER)
    {
      // Add 3 cards to the shown cards
    }
   break;
  }
}
