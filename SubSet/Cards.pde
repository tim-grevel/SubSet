import java.util.Collections;

final int INDEX_COUNT = 0;
final int INDEX_COLOR = 1;
final int INDEX_TRANSPARENCY = 2;
final int INDEX_TYPE = 3;

final int SHAPE_PROPERTY_COUNT = 4;

ArrayList<int[]> cardsInDeck = new ArrayList<int[]>();

void InitializeCards()
{
  for (int a = 0; a < SHAPE_COUNTS.size(); a++)
  {
    for (int b = 0; b < SHAPE_COLORS.size(); b++)
    {
      for (int c = 0; c < SHAPE_TRANSPARENCIES.size(); c++)
      {
        for (int d = 0; d < SHAPE_TYPES.size(); d++)
        {
          int[] newCard = new int[SHAPE_PROPERTY_COUNT];
          newCard[INDEX_COUNT] = a;
          newCard[INDEX_COLOR] = b;
          newCard[INDEX_TRANSPARENCY] = c;
          newCard[INDEX_TYPE] = d;
          
          cardsInDeck.add(newCard);
          
          //int[][] newCards = new int[cards.length + 1][4];
          
          //for (int i = 0; i < cards.length; i++)
          //{
          //  newCards[i] = cards[i];
          //}
          
          //newCards[cards.length] = newCard;
          
          //cards = newCards;
        }
      }
    }
  }
}

void CardsAreSet(String[] cardCodes)
{
  
}

ArrayList<int[]> ShuffleCards(ArrayList<int[]> cardsToShuffle)
{
  Collections.shuffle(cardsToShuffle);
  return cardsToShuffle;
  //int[][] newCards = new int[cards.length][cards[0].length];
  
  //IntList cardIndexes = new IntList();
  
  //for (int i = 0; i < cards.length; i++)
  //{
  //  cardIndexes.append(i);
  //}
  
  //cardIndexes.shuffle();
  
  //for (int i = 0; i < cardIndexes.size(); i++)
  //{
  //  newCards[i] = cards[cardIndexes.get(i)];
  //}
  
  //return newCards;
}

void PrintCards(int[][] cards)
{
  for (int i = 0; i < cards.length; i++)
  {
    println(i + ": ");
    printArray(cards[i]);
  }
}
