void DrawRectangle(int rectMode, int rectX, int rectY, int rectWidth, int rectHeight, int rectRadius, int rectColorRgb, int rectOpacity, int strokeColorRgb, int strokeWeight)
{
  rectMode(rectMode);
  fill(rectColorRgb, rectOpacity);
  stroke(strokeColorRgb);
  strokeWeight(strokeWeight);
  rect(rectX, rectY, rectWidth, rectHeight, rectRadius);
}

void DrawEllipse(int ellipseMode, int ellipseX, int ellipseY, int ellipseWidth, int ellipseHeight, int ellipseColorRgb, int ellipseOpacity, int strokeColorRgb, int strokeWeight)
{
  ellipseMode(ellipseMode);
  fill(ellipseColorRgb, ellipseOpacity);
  stroke(strokeColorRgb);
  strokeWeight(strokeWeight);
  ellipse(ellipseX, ellipseY, ellipseWidth, ellipseHeight);
}

void DrawQuad(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int quadColorRgb, int quadOpacity, int strokeColorRgb, int strokeWeight)
{
  fill(quadColorRgb, quadOpacity);
  stroke(strokeColorRgb);
  strokeWeight(strokeWeight);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void DrawText(String text, int textX, int textY, int alignX, int alignY, int textSize, int textColorRgb)
{
  textAlign(alignX, alignY);
  textSize(textSize);
  fill(textColorRgb);
  text(text, textX, textY);
}
