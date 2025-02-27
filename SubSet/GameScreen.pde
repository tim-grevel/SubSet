void DrawGameScreen()
{
  background(BACKGROUND_COLOR);
  gameGrid = DrawCards(shown, GRID_ROWS, shown.size() / GRID_ROWS);
  if (playOrder.size() + TotalSetsInList(shown) == 0)
  {
    DrawBackButton(true);
  }
  DrawStats();
}

void GameScreenMousePressed()
{
  // If there are no cards left in the pile and no sets left on screen, the game is over
  if (playOrder.size() + TotalSetsInList(shown) == 0)
  {
    if (DrawBackButton(false))
    {
      SetScreen(TITLE_SCREEN);
    }
  }
  else
  {
    HandleCardSelection();
  }
}

void DrawStats()
{
  fill(255);
  textSize(50);
  
  textAlign(LEFT, BOTTOM);
  text("Score: " + score, 20, height - 20);
  
  textAlign(RIGHT, BOTTOM);
  text(TotalSetsInList(shown) + " sets on screen", width - 20, height - 20);
}

// Return whether the mouse is on the button
boolean DrawBackButton(boolean renderButton)
{
  String startText = "Back to title";
  int textSize = 30;
  int textColor = #FFFFFF;
  int buttonWidth = 200;
  int buttonHeight = 100;
  int buttonX = width / 2;
  int buttonY = height - buttonHeight / 2;
  int buttonRadius = 0;
  int buttonColor = #555555;
  
  if (renderButton)
  {
    DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, 4);
  }
  
  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}
