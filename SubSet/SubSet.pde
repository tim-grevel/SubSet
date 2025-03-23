// Screen
final int SCREEN_WIDTH = 1600;
final int SCREEN_HEIGHT = 900;

final int TITLE_SCREEN = 0;
final int GAME_SCREEN = 1;

// Colors
final int BACKGROUND_COLOR = #1E5C3A;
final int BUTTON_COLOR = #01360e;


void settings()
{
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
}

void setup()
{
  InitializeCards();

  currentScreen = TITLE_SCREEN;
}

void draw()
{
  background(BACKGROUND_COLOR);

  switch(currentScreen)
  {
  case TITLE_SCREEN:
    DrawTitleScreen();
    break;
  case GAME_SCREEN:
    DrawGameScreen();
    break;
  }
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
