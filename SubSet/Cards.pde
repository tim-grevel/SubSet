String[] cards = {};

void InitializeCards()
{
  for (int a = 0; a < SHAPE_COUNTS.length; a++)
  {
    for (int b = 0; b < SHAPE_COLORS.length; b++)
    {
      for (int c = 0; c < SHAPE_SHADINGS.length; c++)
      {
        for (int d = 0; d < SHAPE_TYPES.length; d++)
        {
          String cardCode = SHAPE_COUNTS[a] + SHAPE_COLORS[b] + SHAPE_SHADINGS[c] + SHAPE_TYPES[d];
          cards = append(cards, cardCode);
        }
      }
    }
  }
}
