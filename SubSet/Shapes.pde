void DrawShapes(int shape, int centerX, int centerY, int shapeWidth, int shapeHeight, int shapeCount, int shapeColor, int shapeOpacity, int shapeGap, int strokeWeight)
{
  fill(shapeColor, shapeOpacity);
  stroke(shapeColor);
  strokeWeight(strokeWeight);

  // Offset of a shape relative to the center of a card
  int shapeOffset = shapeGap / 2 * (shapeCount - 1);

  for (int i = 0; i < shapeCount; i++)
  {
    DrawShape(shape, centerX, centerY + shapeOffset, shapeWidth, shapeHeight);

    shapeOffset -= shapeGap;
  }
}
