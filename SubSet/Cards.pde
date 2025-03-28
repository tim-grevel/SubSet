int[] numbers = new int[81];
int[] colors = new int[81];
int[] opacities = new int[81];
int[] shapes = new int[81];

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
ArrayList<int[]> DrawCards(IntList cards, int rowCount, int columnCount, int cardWidth, int cardHeight, IntList selectedCards, IntList hintCards)
{
  ArrayList<int[]> grid = new ArrayList<int[]>();

  // Declare card properties
  int cardGap = (cardWidth + cardHeight) / 20;

  // Calculate position of top left card
  int gridStartingX = (width - cardWidth * columnCount - cardGap * (columnCount - 1)) / 2 + cardWidth / 2;
  int gridStartingY = cardGap + cardHeight / 2;

  // Declare new variables for incrementing
  int cardX = gridStartingX;
  int cardY = gridStartingY;

  int cardIndex = 0;

  // Draw card on each position in the grid
  for (int i = 0; i < columnCount; i++)
  {
    for (int j = 0; j < rowCount; j++)
    {
      int card = cards.get(cardIndex);
      int cardNumber = CARD_NUMBERS.get(numbers[card]);
      int cardColor = CARD_COLORS.get(colors[card]);
      int cardOpacity = CARD_OPACITIES.get(opacities[card]);
      int cardShape = shapes[card];

      boolean isSelected = selectedCards.hasValue(card);
      boolean isHint = hintCards.hasValue(card);

      // Draw card
      DrawCard(cardX, cardY, cardWidth, cardHeight, cardNumber, cardColor, cardOpacity, cardShape, isSelected, isHint);
      grid.add(new int[] {cardX, cardY});
      cardIndex++;

      // Per row: increment Y
      cardY += cardHeight + cardGap;
    }
    // Per column: increment X and reset Y
    cardX += cardWidth + cardGap;
    cardY = gridStartingY;
  }

  // Return the grid for checking which card gets clicked on
  return grid;
}

boolean CardsAreSet(int card1, int card2, int card3)
{
  // If any of the attributes are not all the same or all different, the cards are not a set
  if (!AttributesAreSet(numbers, card1, card2, card3)) return false;
  if (!AttributesAreSet(colors, card1, card2, card3)) return false;
  if (!AttributesAreSet(opacities, card1, card2, card3)) return false;
  if (!AttributesAreSet(shapes, card1, card2, card3)) return false;
  return true;
}

boolean AttributesAreSet(int[] attributeValues, int card1, int card2, int card3)
{
  return ((attributeValues[card1] + attributeValues[card2] + attributeValues[card3]) % 3 == 0);
}

ArrayList<int[]> GetAllSetsInList(IntList cards)
{
  // Declare and initialize eventual output
  ArrayList<int[]> sets = new ArrayList<int[]>();

  // Loop over every possible combination of three cards within the given cards
  for (int i = 0; i < cards.size(); i++)
  {
    for (int j = i + 1; j < cards.size(); j++)
    {
      for (int k = j + 1; k < cards.size(); k++)
      {
        if (CardsAreSet(cards.get(i), cards.get(j), cards.get(k)))
        {
          sets.add(new int[] {cards.get(i), cards.get(j), cards.get(k)});
        }
      }
    }
  }

  return sets;
}
