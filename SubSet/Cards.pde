final int INDEX_COUNT = 0;
final int INDEX_COLOR = 1;
final int INDEX_SHADING = 2;
final int INDEX_TYPE = 3;

char[][] cards = new char[0][4];

void InitializeCards()
{
  for (int a = 0; a < SHAPE_COUNTS.length; a++)
  {
    for (int b = 0; b < SHAPE_COLORS.length; b++)
    {
      for (int c = 0; c < SHAPE_TRANSPARENCIES.length; c++)
      {
        for (int d = 0; d < SHAPE_TYPES.length; d++)
        {
          char[] newCard = new char[4];
          newCard[INDEX_COUNT] = SHAPE_COUNTS[a];
          newCard[INDEX_COLOR] = SHAPE_COLORS[b];
          newCard[INDEX_SHADING] = SHAPE_TRANSPARENCIES[c];
          newCard[INDEX_TYPE] = SHAPE_TYPES[d];
          
          char[][] newCards = new char[cards.length + 1][4];
          
          for (int i = 0; i < cards.length; i++)
          {
            newCards[i] = cards[i];
          }
          
          newCards[cards.length] = newCard;
          
          cards = newCards;
        }
      }
    }
  }
}

void CardsAreSet(String[] cardCodes)
{
  
}

char[][] ShuffleCards(char[][] cards)
{
  char[][] newCards = new char[cards.length][cards[0].length];
  
  IntList cardIndexes = new IntList();
  
  for (int i = 0; i < cards.length; i++)
  {
    cardIndexes.append(i);
  }
  
  cardIndexes.shuffle();
  
  for (int i = 0; i < cardIndexes.size(); i++)
  {
    newCards[i] = cards[cardIndexes.get(i)];
  }
  
  return newCards;
}

void PrintCards(char[][] cards)
{
  for (int i = 0; i < cards.length; i++)
  {
    println(i + ": ");
    printArray(cards[i]);
  }
}
