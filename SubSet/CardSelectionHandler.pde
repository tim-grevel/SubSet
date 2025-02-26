void HandleCardSelection()
{
  int cardX, cardY;
  
  for (int i = 0; i < gameGrid.size(); i++)
  {
    int[] coordinate = gameGrid.get(i);
    cardX = coordinate[0];
    cardY = coordinate[1];

    if (MouseOnRect(cardX, cardY, CARD_WIDTH, CARD_HEIGHT))
    {
      if (selected.hasValue(shown.get(i)))
      {
        selected.removeValue(shown.get(i));
      }
      else
      {
        selected.append(shown.get(i));
        if (selected.size() == 3)
        {
          if (CardsAreSet(selected.get(0), selected.get(1), selected.get(2)))
          {
            score++;
            
            for (int card : selected)
            {
              shown.removeValue(card);
            }
          }
          
          selected.clear();
        }
      }
    }
  }
  
  DrawGameScreen();
}
