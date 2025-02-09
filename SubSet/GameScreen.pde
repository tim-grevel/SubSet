char[][] gameCards;

void ShowGameScreen()
{
  DrawCard(cards[0], width/2, height/2);
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
