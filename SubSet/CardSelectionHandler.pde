// Returns whether a set is selected
boolean HandleCardSelection(ArrayList<int[]> grid, int cardWidth, int cardHeight)
{
  int cardX, cardY;

  for (int i = 0; i < grid.size(); i++)
  {
    int[] coordinate = grid.get(i);
    cardX = coordinate[0];
    cardY = coordinate[1];

    if (MouseOnRect(cardX, cardY, cardWidth, cardHeight))
    {
      if (selected.hasValue(shown.get(i)))
      {
        selected.removeValue(shown.get(i));
      } else
      {
        selected.append(shown.get(i));
        if (selected.size() == 3)
        {
          return true;
        }
      }
    }
  }
  return false;
}
