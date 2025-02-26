void SetScreen(int newScreen)
{
  background(BACKGROUND_COLOR);
  currentScreen = newScreen;
  
  // Handle initial drawing of on-screen elements
  DrawScreen(currentScreen);
}

void DrawScreen(int screen)
{
  switch (screen)
  {
    case TITLE_SCREEN:
      DrawTitleScreen();
      break;
    case GAME_SCREEN:
      break;
  }
}
