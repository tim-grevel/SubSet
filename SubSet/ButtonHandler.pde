void DrawRectButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int rectRadius, int buttonColor, int transparency, int strokeWeight)
{
  int buttonDrawMode = CENTER;
  DrawRectangle(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, rectRadius, buttonColor, transparency, buttonColor, strokeWeight);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

void DrawEllipseButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int buttonColor, int transparency, int strokeWeight)
{
  int buttonDrawMode = CENTER;
  DrawEllipse(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, buttonColor, transparency, buttonColor, strokeWeight);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

boolean MouseOnRect(int rectX, int rectY, int rectWidth, int rectHeight)
{
  return mouseX >= rectX - rectWidth / 2
    && mouseX <= rectX + rectWidth / 2
    && mouseY >= rectY - rectHeight / 2
    && mouseY <= rectY + rectHeight / 2;
}

boolean MouseOnEllipse(int ellipseX, int ellipseY, int ellipseDiameter)
{
  return (sqrt(sq(ellipseX - mouseX) + sq(ellipseY - mouseY)) < ellipseDiameter / 2);
}
