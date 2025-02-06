void DrawText(String text, int textX, int textY, int alignX, int alignY, int textSize, int textColorHex)
{
  textAlign(alignX, alignY);
  textSize(textSize);
  fill(textColorHex);
  text(text, textX, textY);
}

void DrawRectangle(int rectX, int rectY, int rectWidth, int rectHeight, int cornerRadius, int rectColorHex)
{
  fill(rectColorHex);
  rect(rectX, rectY, rectWidth, rectHeight, cornerRadius);
}

void DrawEllipse(int ellipseX, int ellipseY, int ellipseWidth, int ellipseHeight, int ellipseColorHex)
{
  fill(ellipseColorHex);
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
}
