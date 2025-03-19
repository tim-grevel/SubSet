final IntList CARD_NUMBERS = new IntList(1, 2, 3);
final IntList CARD_COLORS = new IntList(RED, GREEN, PURPLE);
final IntList CARD_OPACITIES = new IntList(255, 100, 0);

final int CARD_BASE_COLOR = 255;
final int CARD_SELECTED_BASE_COLOR = 180;
final int CARD_RADIUS = 10;

final int SHAPE_BORDER_WEIGHT = 3;

void DrawCard(int cardIndex, int cardX, int cardY, int cardWidth, int cardHeight, boolean isSelected, boolean isHint)
{
  int shapeCount = CARD_NUMBERS.get(numbers[cardIndex]);
  int shapeColor = CARD_COLORS.get(colors[cardIndex]);
  int shapeOpacity = CARD_OPACITIES.get(opacities[cardIndex]);

  // Draw card base
  int cardBaseColor = isSelected ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  int cardStrokeColor = isHint ? #FF0000 : isSelected ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  DrawRectangle(CENTER, cardX, cardY, cardWidth, cardHeight, CARD_RADIUS, cardBaseColor, 255, cardStrokeColor, 4);

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
    DrawShape(shapes[cardIndex], cardX, cardY + shapeOffset, shapeWidth, shapeHeight);

    shapeOffset -= shapeDistance;
  }
}
