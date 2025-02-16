ArrayList<int[]> cardsInPile;
ArrayList<int[]> cardsOnScreen;

IntList selectedCards = new IntList();

ArrayList<int[]> gameGrid;

int score = 0;

void ShowGameScreen()
{

}

void StartGame()
{
  cardsInPile = ShuffleCards(cardsInDeck);
  cardsOnScreen = TakeFromPile(cardsInPile, 12);
  UpdateGrid();
  DrawCards();
  DrawScore();
}

void HandleCardSelection()
{
  for (int i = 0; i < gameGrid.size(); i++)
  {
    int[] coordinate = gameGrid.get(i);
    int cardX = coordinate[0];
    int cardY = coordinate[1];

    if (MouseOnRect(cardX, cardY, CARD_WIDTH, CARD_HEIGHT))
    {
      if (selectedCards.hasValue(i))
      {
        selectedCards.remove(selectedCards.index(i));
      }
      else
      {
        selectedCards.append(i);
        if (selectedCards.size() == 3)
        {
          ArrayList<int[]> setCards = new ArrayList<int[]>();
          
          for (int index : selectedCards)
          {
            setCards.add(cardsOnScreen.get(index));
          }
          
          if (CardsAreSet(setCards))
          {
            score++;
          }
          
          selectedCards.clear();
        }
      }
    }
  }
  
  DrawCards();
  DrawScore();
}

void DrawCards()
{
  background(BACKGROUND_COLOR);
  DrawCardsOnGrid(gameGrid, cardsOnScreen, selectedCards);
}

void UpdateGrid()
{
  background(BACKGROUND_COLOR);
  gameGrid = GenerateGrid(GRID_ROWS, cardsOnScreen.size() / GRID_ROWS);
}

void DrawScore()
{
  fill(#FFFFFF);
  textAlign(CENTER, CENTER);
  text(score, 20, 20);
}
