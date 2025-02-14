final int GRID_ROWS = 3;
final int GRID_COLUMNS = 7;

final int GRID_GAP_X = 20;
final int GRID_GAP_Y = 20;

final int INDEX_GRID_X = 0;
final int INDEX_GRID_Y = 1;

ArrayList<int[]> gridCoordinates = new ArrayList<int[]>();

void InitializeGrid(int rowCount, int columnCount)
{
  // Calculate position of top left card
  int gridStartingX = (SCREEN_WIDTH - CARD_WIDTH * GRID_COLUMNS - GRID_GAP_X * (GRID_COLUMNS - 1)) / 2 + CARD_WIDTH / 2;
  int gridStartingY = 0 + CARD_HEIGHT / 2;
  
  // Declare new variables for incrementing
  int gridX = gridStartingX;
  int gridY = gridStartingY;
  
  for (int i = 0; i < columnCount; i++)
  {
    for (int j = 0; j < rowCount; j++)
    {
      // Add new coordinate to the grid
      int[] coordinate = {gridX, gridY};
      gridCoordinates.add(coordinate);
      
      // Per row: increment Y
      gridY += CARD_HEIGHT + GRID_GAP_Y;
    }
    // Per column: increment X and reset Y
    gridX += CARD_WIDTH + GRID_GAP_X;
    gridY = gridStartingY;
  }
}

void DrawCardsOnGrid(ArrayList<int[]> cards)
{
  for (int i = 0; i < gridCoordinates.size(); i++)
  {
    int[] coords = gridCoordinates.get(i);
    DrawCard(cards.get(i), coords[INDEX_GRID_X], coords[INDEX_GRID_Y]);
  }
  
  //for (int i = 0; i < cards.size(); i++)
  //{
  //  int[] coords = gridCoordinates.get(i);
  //  DrawCard(cards.get(i), coords[INDEX_GRID_X], coords[INDEX_GRID_Y]);
  //}
}

void MoveCards(ArrayList<int[]> src, ArrayList<int[]> dest, int[] srcIndexes)
{
  
}
