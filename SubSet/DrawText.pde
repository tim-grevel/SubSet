void DrawText(String text, int textX, int textY, int alignX, int alignY, int textSize)
{
  textAlign(alignX, alignY);
  textSize(textSize);
  text(text, textX, textY);
}
