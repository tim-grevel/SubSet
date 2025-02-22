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
  fill(0);
  textAlign(LEFT, TOP);
  text("Score: " + score, 20, 20);
  text("Sets on screen: " + TotalSetsInList(shown), 20, 60);
}


void SetPlayOrder()
{
  // Ensure playOrder is initialized
  playOrder = new IntList();
  
  // Add index for every card
  for (int i = 0; i < 81; i++)
  {
    playOrder.append(i);
  }
  
  // Shuffle to create random card dealing order
  playOrder.shuffle();
}
