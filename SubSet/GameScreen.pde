void DrawGameScreen()
{
  gameGrid = DrawCards(shown, GRID_ROWS, shown.size() / GRID_ROWS, CARD_WIDTH, CARD_HEIGHT);

  DrawDrawButton(true);
  DrawStats();

  if (GameIsOver())
  {
    DrawBackButton(true);
    DrawWinner();
  }
}

void GameScreenMousePressed()
{
  // If there are no cards left in the pile and no sets left on screen, the game is over
  if (GameIsOver())
  {
    if (DrawBackButton(false))
    {
      currentScreen = TITLE_SCREEN;
    }
  } else
  {
    HandleSetSelection();

    if (DrawDrawButton(false))
    {
      TakeFromPile(3);
    }

  }
}

void HandleSetSelection()
{
  boolean setSelected = HandleCardSelection(gameGrid, CARD_WIDTH, CARD_HEIGHT);

  if (setSelected)
  {
    if (CardsAreSet(selected.get(0), selected.get(1), selected.get(2)))
    {
      playerScores[GetCurrentTurn()]++;

      // Remove the set from screen
      for (int card : selected)
      {
        shown.removeValue(card);
      }
    }

    selected.clear();
    turnCounter++;
  }
}

void DrawStats()
{
  fill(255);
  textSize(50);

  int textY = height - 20;

  textAlign(RIGHT, BOTTOM);
  text(TotalSetsInList(shown) + " sets on screen", width - 20, textY);

  textAlign(CENTER, BOTTOM);
  text(playOrder.size() + " cards left", width / 2, textY);

  textAlign(LEFT, BOTTOM);
  for (int i = 0; i < playerScores.length; i++)
  {
    String playerText = "P" + (i + 1) + ": " + playerScores[i];
    if (GetCurrentTurn() == i)
    {
      playerText += " <";
    }
    text(playerText, 20, textY);
    textY -= 60;
  }

  text("Score", 20, textY);
}

// Returns whether the mouse is on the button
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

// Returns whether the mouse is on the button
boolean DrawDrawButton(boolean renderButton)
{
  String startText = "Draw 3";
  int textSize = 30;
  int textColor = #FFFFFF;
  int buttonWidth = 200;
  int buttonHeight = 50;
  int buttonX = width / 2;
  int buttonY = height - 100 - buttonHeight / 2;
  int buttonRadius = 0;
  int buttonColor = #555555;

  if (renderButton)
  {
    DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, 4);
  }

  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}



void DrawWinner()
{
  int x = width / 2;
  int y = height / 2;
  int rectWidth = 300;
  int rectHeight = 50;
  int alignment = CENTER;

  int winner = playerScores[0] > playerScores[1] ? 1 : 2;

  String winText = "Player"  + winner + " wins!";

  DrawRectangle(alignment, x, y, rectWidth, rectHeight, 0, #000000, 255, 0);

  DrawText(winText, x, y, alignment, alignment, 30, #FFFFFF);
}
