ArrayList<int[]> cardsInPile;
ArrayList<int[]> cardsOnScreen;

void ShowGameScreen()
{
  DrawCardsOnGrid(cardsInPile);
}

void StartGame()
{
  cardsInPile = ShuffleCards(cardsInDeck);
}
