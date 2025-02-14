ArrayList<int[]> cardsInPile;
ArrayList<int[]> cardsOnScreen;

ArrayList<int[]> gameGrid;

void ShowGameScreen()
{
  gameGrid = GenerateGrid(GRID_ROWS, GRID_COLUMNS);
  DrawCardsOnGrid(gameGrid, cardsInPile);
}

void StartGame()
{
  cardsInPile = ShuffleCards(cardsInDeck);
}
