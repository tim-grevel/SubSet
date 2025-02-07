void DrawRectButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int cornerRadius, int buttonColor)
{
  int buttonDrawMode = CENTER;
  DrawRectangle(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, cornerRadius, buttonColor);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

void DrawEllipseButton(String buttonText, int textSize, int textColor, int buttonX, int buttonY, int buttonWidth, int buttonHeight, int buttonColor)
{
  int buttonDrawMode = CENTER;
  DrawEllipse(buttonDrawMode, buttonX, buttonY, buttonWidth, buttonHeight, buttonColor);
  DrawText(buttonText, buttonX, buttonY, buttonDrawMode, buttonDrawMode, textSize, textColor);
}

boolean ButtonOnRect(int rectX, int rectY, int rectWidth, int rectHeight)
{
  return mouseX >= rectX && mouseX <= rectX + rectWidth && mouseY >= rectY && mouseY <= rectY + rectHeight;
}

boolean ButtonOnEllipse(int ellipseX, int ellipseY, int ellipseDiameter)
{
  return (sqrt(sq(ellipseX - mouseX) + sq(ellipseY - mouseY)) < ellipseDiameter / 2);
}
