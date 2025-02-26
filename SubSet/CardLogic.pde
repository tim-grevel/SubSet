int TotalSetsInList(IntList cards)
{
  int count = 0;
  for (int i = 0; i < cards.size(); i++)
  {
    for (int j = i + 1; j < cards.size(); j++)
    {
      for (int k = j + 1; k < cards.size(); k++)
      {
        if (CardsAreSet(cards.get(i), cards.get(j), cards.get(k))) count++;
      }
    }
  }
  return count;
}

boolean CardsAreSet(int card1, int card2, int card3)
{
  // If any of the attributes are not all the same or all different, the cards are not a set
  if (!AttributesAreSet(numbers  , card1, card2, card3)) return false;
  if (!AttributesAreSet(colors   , card1, card2, card3)) return false;
  if (!AttributesAreSet(opacities, card1, card2, card3)) return false;
  if (!AttributesAreSet(shapes   , card1, card2, card3)) return false;
  return true;
}

boolean AttributesAreSet(int[] attributeValues, int card1, int card2, int card3)
{
  return ((attributeValues[card1] + attributeValues[card2] + attributeValues[card3]) % 3 == 0);
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
