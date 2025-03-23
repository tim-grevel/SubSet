final int GRID_ROWS = 3;
final int CARD_WIDTH = SCREEN_WIDTH / 12;
final int CARD_HEIGHT = int(CARD_WIDTH * 1.56);

void DrawGameScreen()
{
  gameGrid = DrawCards(shown, GRID_ROWS, shown.size() / GRID_ROWS, CARD_WIDTH, CARD_HEIGHT, selected, hints);

  DrawTakeButton();
  DrawHintButton();
  DrawStats();

  if (GameIsOver())
  {
    DrawBackButton();
    DrawWinner();
  }
}

void GameScreenMousePressed()
{
  if (GameIsOver())
  {
    if (DrawBackButton())
    {
      currentScreen = TITLE_SCREEN;
    }
  } else
  {
    HandleSetSelection();

    if (DrawTakeButton())
    {
      TakeFromPile(3);
      hints.clear();
    }
    if (DrawHintButton())
    {
      var sets = GetAllSetsInList(shown);
      if (sets.size() > 0)
      {
        ShowHint(sets.get(0));
      }
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

      RemoveCards(selected);
    }

    selected.clear();
    hints.clear();
    turnCounter++;
  }
}

void RemoveCards(IntList cards)
{
  for (int card : cards)
  {
    shown.removeValue(card);
  }
}

void DrawStats()
{
  fill(255);
  textSize(50);

  int textY = height - 20;

  textAlign(RIGHT, BOTTOM);
  text(GetAllSetsInList(shown).size() + " sets on screen", width - 20, textY);

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
boolean DrawBackButton()
{
  String startText = "Back to title";
  int textSize = 30;
  int buttonWidth = 200;
  int buttonHeight = 100;
  int buttonX = width / 2;
  int buttonY = height - buttonHeight / 2;
  int buttonRadius = 0;
  int textColor = 255;
  int buttonColor = BUTTON_COLOR;
  int strokeColor = 0;

  DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, strokeColor, 4);

  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}

// Returns whether the mouse is on the button
boolean DrawTakeButton()
{
  String startText = "Draw 3";
  int textSize = 30;
  int buttonWidth = 200;
  int buttonHeight = 50;
  int buttonX = width / 2;
  int buttonY = height - 100 - buttonHeight / 2;
  int buttonRadius = 0;
  int textColor = 255;
  int buttonColor = BUTTON_COLOR;
  int strokeColor = 0;

  DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, strokeColor, 4);

  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}

// Returns whether the mouse is on the button
boolean DrawHintButton()
{
  String startText = "Hint";
  int textSize = 30;
  int buttonWidth = 200;
  int buttonHeight = 50;
  int buttonX = width - buttonWidth / 2;
  int buttonY = height - 100 - buttonHeight / 2;
  int buttonRadius = 0;
  int textColor = 255;
  int buttonColor = BUTTON_COLOR;
  int strokeColor = 0;

  DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, strokeColor, 4);

  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}

void DrawWinner()
{
  int x = width / 2;
  int y = height / 2;
  int rectWidth = 300;
  int rectHeight = 50;
  int rectColor = 0;
  int alignment = CENTER;

  int winner = playerScores[0] > playerScores[1] ? 1 : 2;

  String winText = "Player"  + winner + " wins!";

  DrawRectangle(alignment, x, y, rectWidth, rectHeight, 0, rectColor, 255, rectColor, 0);

  DrawText(winText, x, y, alignment, alignment, 30, #FFFFFF);
}
