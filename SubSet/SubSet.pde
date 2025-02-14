final int SCREEN_WIDTH = 1600; 
final int SCREEN_HEIGHT = 800;
final int BACKGROUND_COLOR = #333333;

void settings()
{
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
}

void setup()
{
  InitializeCards();
  cardsInPile = ShuffleCards(cardsInDeck);
  GenerateGrid(GRID_ROWS, GRID_COLUMNS);
  
  //PrintCards(cards);
}

void draw()
{
  background(BACKGROUND_COLOR);
  
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

void mouseClicked()
{
  switch(currentScreen)
  {
   case TITLE_SCREEN:
     HandleTitleScreenButtons();
   break;
   case GAME_SCREEN:
   
   break;
  }
}
