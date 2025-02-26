void settings()
{
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
}

void setup()
{
  InitializeCards();
  
  background(BACKGROUND_COLOR);
  
  DrawScreen(TITLE_SCREEN);
}

void draw()
{  

}

void mousePressed()
{
  switch(currentScreen)
  {
   case TITLE_SCREEN:
     TitleScreenMousePressed();
   break;
   case GAME_SCREEN:
     GameScreenMousePressed();
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
    
    if (key == 'h')
    {
      TakeFromPile(3);
      DrawGameScreen();
    }
   break;
  }
}
