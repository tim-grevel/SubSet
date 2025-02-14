ArrayList<int[]> cardsInPile;
ArrayList<int[]> cardsOnScreen;

IntList selectedCards = new IntList();

ArrayList<int[]> gameGrid;

void ShowGameScreen()
{
  gameGrid = GenerateGrid(GRID_ROWS, GRID_COLUMNS);
  DrawCardsOnGrid(gameGrid, cardsOnScreen, selectedCards);
}

void StartGame()
{
  cardsInPile = ShuffleCards(cardsInDeck);
  cardsOnScreen = cardsInPile;
}

void HandleCardSelection()
{
  for (int i = 0; i < gameGrid.size(); i++)
  {
    int[] coordinate = gameGrid.get(i);
    int cardX = coordinate[INDEX_GRID_X];
    int cardY = coordinate[INDEX_GRID_Y];

    if (MouseOnRect(cardX, cardY, CARD_WIDTH, CARD_HEIGHT))
    {
      if (selectedCards.hasValue(i))
      {
        selectedCards.remove(selectedCards.index(i));
      }
      else
      {
        selectedCards.append(i);
      }
    }
  }
}
