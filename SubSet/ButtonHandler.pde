void DrawRectButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int rectRadius, int buttonColor, int transparency, int strokeColor, int strokeWeight)
{
  int buttonDrawMode = CENTER;
  DrawRectangle(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, rectRadius, buttonColor, transparency, strokeColor, strokeWeight);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

void DrawEllipseButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int buttonColor, int transparency, int strokeColor, int strokeWeight)
{
  int buttonDrawMode = CENTER;
  DrawEllipse(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, buttonColor, transparency, strokeColor, strokeWeight);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

boolean MouseOnRect(int rectX, int rectY, int rectWidth, int rectHeight)
{
  return mouseX >= rectX - rectWidth / 2
    && mouseX <= rectX + rectWidth / 2
    && mouseY >= rectY - rectHeight / 2
    && mouseY <= rectY + rectHeight / 2;
}
