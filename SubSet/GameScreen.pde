void DrawGameScreen()
{
  background(BACKGROUND_COLOR);
  gameGrid = DrawCards(GRID_ROWS, shown.size() / GRID_ROWS);
  DrawScore();
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

void DrawScore()
{
  fill(#FFFFFF);
  textAlign(CENTER, CENTER);
  text(score, 20, 20);
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
