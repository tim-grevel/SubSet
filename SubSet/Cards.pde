void InitializeCards()
{
  for (int i = 0; i < 81; i++)
  {
    numbers[i] = i % 3;
    colors[i] = (i / 3) % 3;
    opacities[i] = (i / 9) % 3;
    shapes[i] = (i / 27) % 3;
  }
}

void TakeFromPile(int amount)
{
  if (shown.size() + amount > 21) return;
  
  while (amount > 0)
  {
    if (playOrder.size() == 0) return;
    int card = playOrder.get(0);
    playOrder.remove(0);
    shown.append(card);
    amount--;
  }
}

// This method draws all on-screen cards in a grid
ArrayList<int[]> DrawCards(IntList cards, int rowCount, int columnCount)
{
  ArrayList<int[]> grid = new ArrayList<int[]>();
  
  // Declare card properties
  int cardWidth = width / 12;
  int cardHeight = int(cardWidth * 1.56);
  int cardGap = (cardWidth + cardHeight) / 20;
  
  // Calculate position of top left card
  int gridStartingX = (width - cardWidth * columnCount - GRID_GAP * (columnCount - 1)) / 2 + cardWidth / 2;
  int gridStartingY = cardGap + cardHeight / 2;
  
  // Declare new variables for incrementing
  int gridX = gridStartingX;
  int gridY = gridStartingY;

  int cardIndex = 0;
  
  // Draw card on each position in the grid
  for (int i = 0; i < columnCount; i++)
  {
    for (int j = 0; j < rowCount; j++)
    {
      // Draw card
      DrawCard(cards.get(cardIndex++), gridX, gridY, cardWidth, cardHeight);
      grid.add(new int[] {gridX, gridY});
      
      // Per row: increment Y
      gridY += cardHeight + cardGap;
    }
    // Per column: increment X and reset Y
    gridX += cardWidth + cardGap;
    gridY = gridStartingY;
  }
  
  // Return the grid for checking which card gets clicked on
  return grid;
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
