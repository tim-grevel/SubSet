final int GRID_ROWS = 3;
final int GRID_COLUMNS = 7;

final int GRID_GAP_X = 20;
final int GRID_GAP_Y = 20;

final int INDEX_GRID_X = 0;
final int INDEX_GRID_Y = 1;

ArrayList<int[]> GenerateGrid(int rowCount, int columnCount)
{
  ArrayList<int[]> grid = new ArrayList<int[]>();
  
  // Calculate position of top left card
  int gridStartingX = (width - CARD_WIDTH * columnCount - GRID_GAP_X * (columnCount - 1)) / 2 + CARD_WIDTH / 2;
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
      grid.add(coordinate);
      
      // Per row: increment Y
      gridY += CARD_HEIGHT + GRID_GAP_Y;
    }
    // Per column: increment X and reset Y
    gridX += CARD_WIDTH + GRID_GAP_X;
    gridY = gridStartingY;
  }
  
  return grid;
}

void DrawCardsOnGrid(ArrayList<int[]> grid, ArrayList<int[]> cards)
{
  for (int i = 0; i < grid.size(); i++)
  {
    int[] coords = grid.get(i);
    DrawCard(cards.get(i), coords[INDEX_GRID_X], coords[INDEX_GRID_Y]);
  }
  
  //for (int i = 0; i < cards.size(); i++)
  //{
  //  int[] coords = gridCoordinates.get(i);
  //  DrawCard(cards.get(i), coords[INDEX_GRID_X], coords[INDEX_GRID_Y]);
  //}
}
