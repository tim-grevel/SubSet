import java.util.HashSet;

ArrayList<int[]> MoveCards(ArrayList<int[]> src, ArrayList<int[]> dest, int[] srcIndexes)
{
  for (int index : srcIndexes)
  {
    dest.add(src.get(index));
    src.remove(index);
  }
  
  return dest;
}

ArrayList<int[]> TakeFromPile(ArrayList<int[]> pile, int amount)
{
  ArrayList<int[]> cardsTaken = new ArrayList<int[]>();
  
  int finalIndex = max(pile.size() - amount, 0);
  
  for (int i = pile.size() - 1; i >= finalIndex; i--) 
  {
    cardsTaken.add(pile.get(i));
    pile.remove(i);
  }
  
  return cardsTaken;
}

boolean CardsAreSet(ArrayList<int[]> cards)
{
  for (int i = 0; i < SHAPE_PROPERTY_COUNT; i++)
  {
    // Create HashSet to store each property value
    // HashSet is used for flexibility in number of cards or properties
    HashSet<Integer> set = new HashSet<>();
    for (int[] card : cards)
    {
      set.add(card[i]);
    }
    // The size of a HashSet is the number of unique items
    if (set.size() != 1 && set.size() != 3)
    {
      // Size of 2 means all values were neither equal nor inequal
      return false;
    }
  }
  // If false was not returned in the code above the cards are a set
  return true;
}
