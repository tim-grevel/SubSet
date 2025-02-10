void DrawText(String text, int textX, int textY, int alignX, int alignY, int textSize, int textColorHex)
{
  textAlign(alignX, alignY);
  textSize(textSize);
  fill(textColorHex);
  text(text, textX, textY);
}

void DrawRectangle(int rectMode, int rectX, int rectY, int rectWidth, int rectHeight, int rectRadius, int rectColorHex, int transparency, int strokeWeight)
{
  rectMode(rectMode);
  fill(rectColorHex, transparency);
  stroke(rectColorHex);
  strokeWeight(strokeWeight);
  rect(rectX, rectY, rectWidth, rectHeight, rectRadius);
}

void DrawEllipse(int ellipseMode, int ellipseX, int ellipseY, int ellipseWidth, int ellipseHeight, int ellipseColorHex, int transparency, int strokeWeight)
{
  ellipseMode(ellipseMode);
  fill(ellipseColorHex, transparency);
  stroke(ellipseColorHex);
  strokeWeight(strokeWeight);
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
}
