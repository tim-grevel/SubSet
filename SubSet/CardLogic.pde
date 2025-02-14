ArrayList<int[]> MoveCards(ArrayList<int[]> src, ArrayList<int[]> dest, int[] srcIndexes)
{
  for (int index : srcIndexes)
  {
    dest.add(src.get(index));
    src.remove(index);
  }
  
  return dest;
}

ArrayList<int[]> DrawFromPile(ArrayList<int[]> pile, int amount)
{
  ArrayList<int[]> drawnCards = new ArrayList<int[]>();
  
  for (int i = max(pile.size() - amount, 0); i < pile.size(); i++)
  {
    drawnCards.add(pile.get(i));
  }
  
  return drawnCards;
}

void CardsAreSet(ArrayList<int[]> cards)
{
  
}
