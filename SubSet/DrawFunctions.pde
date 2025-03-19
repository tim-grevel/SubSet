void DrawText(String text, int textX, int textY, int alignX, int alignY, int textSize, int textColorRgb)
{
  textAlign(alignX, alignY);
  textSize(textSize);
  fill(textColorRgb);
  text(text, textX, textY);
}

void DrawRectangle(int rectMode, int rectX, int rectY, int rectWidth, int rectHeight, int rectRadius, int rectColorRgb, int transparency, int strokeColorRgb, int strokeWeight)
{
  rectMode(rectMode);
  fill(rectColorRgb, transparency);
  stroke(strokeColorRgb);
  strokeWeight(strokeWeight);
  rect(rectX, rectY, rectWidth, rectHeight, rectRadius);
}

void DrawEllipse(int ellipseMode, int ellipseX, int ellipseY, int ellipseWidth, int ellipseHeight, int ellipseColorRgb, int transparency, int strokeColorRgb, int strokeWeight)
{
  ellipseMode(ellipseMode);
  fill(ellipseColorRgb, transparency);
  stroke(strokeColorRgb);
  strokeWeight(strokeWeight);
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
}
