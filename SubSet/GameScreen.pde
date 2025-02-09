int[][] gameCards;

void ShowGameScreen()
{
  DrawCard(cards[0], width/2, height/2);
  DrawCard(cards[1], width/3, height/2);
  DrawCard(cards[3], width/4, height/2);
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
