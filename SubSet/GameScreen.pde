int[][] gameCards;

void ShowGameScreen()
{
  int counter = 0;
  for (int i = 0; i < 3; i++) // Rows
  {
    for (int j = 0; j < 7; j++) // Columns
    {
      rectMode(CENTER);
      //rect((width/10) * (j + 1), (height / 10) * (i + 1), 10, 10);
      DrawCard(gameCards[counter], (width / 8) * (j + 1), (height / 4 + 20) * (i + 1));
      counter++;
    }
  }
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
