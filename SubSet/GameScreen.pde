int[][] gameCards;

void ShowGameScreen()
{
  int counter = 0;
  for (int i = 0; i < 9; i++)
  {
    for (int j = 0; j < 9; j++)
    {
      rectMode(CENTER);
      //rect((width/10) * (j + 1), (height / 10) * (i + 1), 10, 10);
      DrawCard(cards[counter], (width / 10) * (j + 1), (height / 5) * (i + 1));
      counter++;
    }
  }
  
  rectMode(CENTER);
  rect(width/2, height/2, 100, 100);
}

void StartGame()
{
  gameCards = ShuffleCards(cards);
}
