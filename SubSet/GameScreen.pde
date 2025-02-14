

void ShowGameScreen()
{
  int counter = 0;
  for (int i = 0; i < 7; i++) // Columns
  {
    for (int j = 0; j < 3; j++) // Rows
    {
      rectMode(CENTER);
      //rect((width/10) * (j + 1), (height / 10) * (i + 1), 10, 10);
      DrawCard(gameCards.get(counter), (width / 8) * (i + 1), (height / 4 + 20) * (j + 1));
      counter++;
    }
  }
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
