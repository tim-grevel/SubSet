void DrawShape(int shape, int shapeX, int shapeY, int shapeWidth, int shapeHeight)
{
  switch(shape)
  {
  case 0:
    rectMode(CENTER);
    rect(shapeX, shapeY, shapeWidth, shapeHeight, 0);
    break;
  case 1:
    rectMode(CENTER);
    rect(shapeX, shapeY, shapeWidth, shapeHeight, shapeHeight / 2);
    break;
  case 2:
    quad(
      // Left
      shapeX - shapeWidth / 2,
      shapeY,

      // Top
      shapeX,
      shapeY + shapeHeight / 2,

      // Right
      shapeX + shapeWidth / 2,
      shapeY,

      // Bottom
      shapeX,
      shapeY - shapeHeight / 2
      );
    break;
  }
}
