final IntList CARD_NUMBERS = new IntList(1, 2, 3);
final IntList CARD_COLORS = new IntList(RED, GREEN, PURPLE);
final IntList CARD_OPACITIES = new IntList(255, 100, 0);

final int CARD_BASE_COLOR = 255;
final int CARD_SELECTED_BASE_COLOR = 180;
final int CARD_BASE_RADIUS = 10;
final int CARD_BASE_OPACITY = 255;
final int CARD_BASE_STROKE_WEIGHT = 4;

final int SHAPE_STROKE_WEIGHT = 3;

void DrawCard(int cardX, int cardY, int cardWidth, int cardHeight, int cardNumber, int cardColor, int cardOpacity, int cardShape, boolean isSelected, boolean isHint)
{
  DrawCardBase(cardX, cardY, cardWidth, cardHeight, isSelected, isHint);

  int shapeWidth = int(cardWidth / 1.5);
  int shapeHeight = cardHeight / 5;
  int shapeGap = int(shapeHeight * 1.5);

  DrawShapes(cardShape, cardX, cardY, shapeWidth, shapeHeight, cardNumber, cardColor, cardOpacity, shapeGap, SHAPE_STROKE_WEIGHT);
}

void DrawCardBase(int baseX, int baseY, int baseWidth, int baseHeight, boolean isSelected, boolean isHint)
{
  int cardBaseColor = isSelected ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;
  int cardStrokeColor = isHint ? #FF0000 : isSelected ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR;

  DrawRectangle(CENTER, baseX, baseY, baseWidth, baseHeight, CARD_BASE_RADIUS, cardBaseColor, CARD_BASE_OPACITY, cardStrokeColor, CARD_BASE_STROKE_WEIGHT);
}
