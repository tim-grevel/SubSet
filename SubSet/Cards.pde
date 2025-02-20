//ArrayList<int[]> cardsInDeck = new ArrayList<int[]>();

void InitializeCards()
{
  for (int i = 0; i < 81; i++)
  {
    numbers[i] = i % 3;
    opacities[i] = (i / 3) % 3;
    colors[i] = (i / 9) % 3;
    shapes[i] = (i / 27) % 3;
  }
  
  //for (int n = 0; n < SHAPE_COUNTS.size(); n++)
  //{
  //  for (int o = 0; o < SHAPE_COLORS.size(); o++)
  //  {
  //    for (int c = 0; c < SHAPE_TRANSPARENCIES.size(); c++)
  //    {
  //      for (int s = 0; s < SHAPE_TYPES.size(); s++)
  //      {
  //        int[] newCard = new int[4];
  //        newCard[NUMBER] = n;
  //        newCard[COLOR] = o;
  //        newCard[OPACITY] = c;
  //        newCard[SHAPE] = s;
          
  //        cardsInDeck.add(newCard);
          
  //        //int[][] newCards = new int[cards.length + 1][4];
          
  //        //for (int i = 0; i < cards.length; i++)
  //        //{
  //        //  newCards[i] = cards[i];
  //        //}
          
  //        //newCards[cards.length] = newCard;
          
  //        //cards = newCards;
  //      }
  //    }
  //  }
  //}
}

ArrayList<int[]> ShuffleCards(ArrayList<int[]> cardsToShuffle)
{
  //Collections.shuffle(cardsToShuffle);
  //return cardsToShuffle;
  ArrayList<int[]> newCards = new ArrayList<int[]>();
  
  IntList cardIndexes = new IntList();
  
  for (int i = 0; i < cardsToShuffle.size(); i++)
  {
    cardIndexes.append(i);
  }
  
  cardIndexes.shuffle();
  
  for (int index : cardIndexes)
  {
    newCards.add(cardsToShuffle.get(index));
  }
  
  return newCards;
}

void PrintCards(int[][] cards)
{
  for (int i = 0; i < cards.length; i++)
  {
    println(i + ": ");
    printArray(cards[i]);
  }
}
