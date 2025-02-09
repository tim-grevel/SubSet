final int CARD_WIDTH = 150;
final int CARD_HEIGHT = 200;
final int CARD_RADIUS = 10;

final int SHAPE_WIDTH = CARD_WIDTH * 10 / 15;
final int SHAPE_HEIGHT = CARD_HEIGHT / 5;

final int[] SHAPE_OFFSETS = {-60, -30, 0, 30, 60};

final int CARD_BASE_COLOR = #FFFFFF;

void DrawCard(int[] card, int cardX, int cardY)
{
  int cardCount = SHAPE_COUNTS.get(card[INDEX_COUNT]);
  int cardColor = SHAPE_COLORS.get(card[INDEX_COLOR]);
  int cardTransparency = SHAPE_TRANSPARENCIES.get(card[INDEX_TRANSPARENCY]);
  String cardType = SHAPE_TYPES.get(card[INDEX_TYPE]);
  
  // Draw card base
  DrawRectangle(CENTER, cardX, cardY, CARD_WIDTH, CARD_HEIGHT, CARD_RADIUS, CARD_BASE_COLOR);
  
  for (int offset : SHAPE_OFFSETS)
  {
    DrawRectangle(CENTER, cardX, cardY + offset, SHAPE_WIDTH, SHAPE_HEIGHT, SHAPE_HEIGHT / 2, cardColor);
  }
}
