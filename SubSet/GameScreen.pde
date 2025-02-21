int[] numbers = new int[81];
int[] colors = new int[81];
int[] opacities = new int[81];
int[] shapes = new int[81];
boolean[] used = new boolean[81];

IntList shown = new IntList();
IntList selected = new IntList();
IntList playOrder = new IntList();

//ArrayList<int[]> cardsInPile;
//ArrayList<int[]> cardsOnScreen;

//IntList selectedCards = new IntList();

ArrayList<int[]> gameGrid = new ArrayList<int[]>();

int score = 0;

void ShowGameScreen()
{

}

void StartGame()
{
  ResetGame();
  SetPlayOrder();
  TakeFromPile(12);
  UpdateCards();
  DrawScore();
}

void ResetGame()
{
  shown.clear();
  selected.clear();
  
  for (int i = 0; i < used.length; i++)
  {
    used[i] = false;
  }
}

void HandleCardSelection()
{
  int cardX, cardY;
  
  for (int i = 0; i < gameGrid.size(); i++)
  {
    int[] coordinate = gameGrid.get(i);
    cardX = coordinate[0];
    cardY = coordinate[1];

    if (MouseOnRect(cardX, cardY, CARD_WIDTH, CARD_HEIGHT))
    {
      if (selected.hasValue(shown.get(i)))
      {
        selected.removeValue(shown.get(i));
      }
      else
      {
        selected.append(shown.get(i));
        if (selected.size() == 3)
        {
          if (CardsAreSet(selected.get(0), selected.get(1), selected.get(2)))
          {
            score++;
          }
          
          selected.clear();
        }
      }
    }
  }
  
  UpdateCards();
  DrawScore();
}

void UpdateCards()
{
  background(BACKGROUND_COLOR);
  gameGrid = DrawCards(GRID_ROWS, shown.size() / GRID_ROWS);
}

void DrawScore()
{
  fill(#FFFFFF);
  textAlign(CENTER, CENTER);
  text(score, 20, 20);
}


void SetPlayOrder()
{
  // Ensure playOrder is initialized
  playOrder = new IntList();
  
  // Add index for every card
  for (int i = 0; i < 81; i++)
  {
    playOrder.append(i);
  }
  
  // Shuffle to create random card dealing order
  playOrder.shuffle();
}
