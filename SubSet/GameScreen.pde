void DrawGameScreen()
{
  background(BACKGROUND_COLOR);
  gameGrid = DrawCards(GRID_ROWS, shown.size() / GRID_ROWS);
  DrawStats();
}

void StartGame()
{
  ResetGame();
  SetPlayOrder();
  TakeFromPile(12);
  DrawGameScreen();
}

void ResetGame()
{
  shown.clear();
  selected.clear();
  
  for (int i = 0; i < used.length; i++)
  {
    used[i] = false;
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
