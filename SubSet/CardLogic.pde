void TakeFromPile(int amount)
{
  while (amount > 0)
  {
    if (playOrder.size() == 0) return;
    int card = playOrder.get(0);
    playOrder.remove(0);
    shown.append(card);
    amount--;
  }
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
