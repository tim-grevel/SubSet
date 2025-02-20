void DrawCard(int index, int cardX, int cardY)
{
  int shapeCount = SHAPE_COUNTS.get(card[NUMBER]);
  int shapeColor = SHAPE_COLORS.get(card[COLOR]);
  int shapeTransparency = SHAPE_TRANSPARENCIES.get(card[OPACITY]);
  String shapeType = SHAPE_TYPES.get(card[SHAPE]);
  
  int cardBaseColor = selected[index] ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  
  // Draw card base
  DrawRectangle(CENTER, cardX, cardY, CARD_WIDTH, CARD_HEIGHT, CARD_RADIUS, cardBaseColor, 255, 4);
  
  // Set color for shapes
  fill(colors[index], opacities[index]);
    
  int offsetIndex = 3 - shapeCount;
  
  for (int i = 0; i < shapeCount; i++)
  {
    int offset = SHAPE_OFFSETS[offsetIndex];
    
    switch(shapeType)
    {
      case "Rectangle":
        DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, 0, shapeColor, shapeTransparency, SHAPE_BORDER_WEIGHT);
      break;
      case "Oval":
        DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, SHAPE_HEIGHT / 2, shapeColor, shapeTransparency, SHAPE_BORDER_WEIGHT);
      break;
      case "Diamond":
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
  
  //for (int offset : SHAPE_OFFSETS)
  //{
  //  DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, SHAPE_HEIGHT / 2, cardColor);
  //}
}
