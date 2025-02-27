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
