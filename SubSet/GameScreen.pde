char[][] gameCards;

void ShowGameScreen()
{
  rect(width/2, height/2, 100, 100);
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
