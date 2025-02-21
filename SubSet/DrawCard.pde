// This method draws all on-screen cards in a grid
ArrayList<int[]> DrawCards(int rowCount, int columnCount)
{
  ArrayList<int[]> grid = new ArrayList<int[]>();
  
  // Calculate position of top left card
  int gridStartingX = (width - CARD_WIDTH * columnCount - GRID_GAP_X * (columnCount - 1)) / 2 + CARD_WIDTH / 2;
  int gridStartingY = 0 + CARD_HEIGHT / 2;
  
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
      DrawCard(shown.get(cardIndex++), gridX, gridY);
      grid.add(new int[] {gridX, gridY});
      
      // Per row: increment Y
      gridY += CARD_HEIGHT + GRID_GAP_Y;
    }
    // Per column: increment X and reset Y
    gridX += CARD_WIDTH + GRID_GAP_X;
    gridY = gridStartingY;
  }
  
  // Return the grid for checking which card gets clicked on
  return grid;
}

void DrawCard(int index, int cardX, int cardY)
{
  int shapeCount = CARD_NUMBERS.get(numbers[index]);
  int shapeColor = CARD_COLORS.get(colors[index]);
  int shapeTransparency = CARD_OPACITIES.get(opacities[index]);
  
  int cardBaseColor = selected.hasValue(index) ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  
  // Draw card base
  DrawRectangle(CENTER, cardX, cardY, CARD_WIDTH, CARD_HEIGHT, CARD_RADIUS, cardBaseColor, 255, 4);
  
  // Set color and opacity for shapes
  fill(CARD_COLORS.get(colors[index]), CARD_OPACITIES.get(opacities[index]));
    
  int offsetIndex = 3 - shapeCount;
  
  for (int i = 0; i < shapeCount; i++)
  {
    int offset = SHAPE_OFFSETS[offsetIndex];
    
    switch(shapes[index])
    {
      case 0:
        DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, 0, shapeColor, shapeTransparency, SHAPE_BORDER_WEIGHT);
      break;
      case 1:
        DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, SHAPE_HEIGHT / 2, shapeColor, shapeTransparency, SHAPE_BORDER_WEIGHT);
      break;
      case 2:
        stroke(shapeColor);
        strokeWeight(SHAPE_BORDER_WEIGHT);
        fill(shapeColor, shapeTransparency);
        quad(
          // Left
          cardX - SHAPE_WIDTH / 2,
          cardY + offset,
          
          // Top
          cardX,
          cardY + SHAPE_HEIGHT / 2 + offset,
          
          // Right
          cardX + SHAPE_WIDTH / 2,
          cardY + offset,
          
          // Bottom
          cardX,
          cardY - SHAPE_HEIGHT / 2 + offset
        );
      break;
    }
    
    offsetIndex += 2;
  }
}
