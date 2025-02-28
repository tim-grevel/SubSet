void DrawCard(int index, int cardX, int cardY, int cardWidth, int cardHeight)
{
  int shapeCount = CARD_NUMBERS.get(numbers[index]);
  int shapeColor = CARD_COLORS.get(colors[index]);
  int shapeOpacity = CARD_OPACITIES.get(opacities[index]);
  
  int cardBaseColor = selected.hasValue(index) ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  
  // Draw card base
  DrawRectangle(CENTER, cardX, cardY, cardWidth, cardHeight, CARD_RADIUS, cardBaseColor, 255, 4);
  
  // Set color and opacity for shapes
  fill(shapeColor, shapeOpacity);
  stroke(shapeColor);
  strokeWeight(SHAPE_BORDER_WEIGHT);
  
  int shapeWidth = int(cardWidth / 1.5);
  int shapeHeight = cardHeight / 5;
  int shapeDistance = int(shapeHeight * 1.5);
  
  int shapeOffset = shapeDistance / 2 * (shapeCount - 1);
  
  for (int i = 0; i < shapeCount; i++)
  {
    DrawShape(shapes[index], cardX, cardY + shapeOffset, shapeWidth, shapeHeight);
    
    shapeOffset -= shapeDistance;
  }
}
