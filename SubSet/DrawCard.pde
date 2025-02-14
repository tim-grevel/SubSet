final int CARD_WIDTH = 150;
final int CARD_HEIGHT = 200;
final int CARD_RADIUS = 10;

final int SHAPE_WIDTH = CARD_WIDTH * 10 / 15;
final int SHAPE_HEIGHT = CARD_HEIGHT / 5;
final int SHAPE_BORDER_WEIGHT = 3;

final int[] SHAPE_OFFSETS = {-60, -30, 0, 30, 60};

final int CARD_BASE_COLOR = #FFFFFF;
final int CARD_SELECTED_BASE_COLOR = #AAAAAA;

void DrawCard(int[] card, int cardX, int cardY, boolean selected)
{
  int shapeCount = SHAPE_COUNTS.get(card[INDEX_COUNT]);
  int shapeColor = SHAPE_COLORS.get(card[INDEX_COLOR]);
  int shapeTransparency = SHAPE_TRANSPARENCIES.get(card[INDEX_TRANSPARENCY]);
  String shapeType = SHAPE_TYPES.get(card[INDEX_TYPE]);
  
  int cardBaseColor = selected ? CARD_SELECTED_BASE_COLOR : CARD_BASE_COLOR ;
  
  // Draw card base
  DrawRectangle(CENTER, cardX, cardY, CARD_WIDTH, CARD_HEIGHT, CARD_RADIUS, cardBaseColor, 255, 4);
    
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
