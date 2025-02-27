void DrawTitleScreen()
{
  DrawTitle();
  DrawStartButton(true);
}

void TitleScreenMousePressed()
{
  if (DrawStartButton(false))
  {
    SetScreen(GAME_SCREEN);
    StartGame();
  }
}

void DrawTitle()
{
  String titleText = "SubSet";
  int titleX = width / 2;
  int titleY = 100;
  int titleSize = 80;
  int titleColor = #BB00BB; // Purple~ish
  
  DrawText(titleText, titleX, titleY, CENTER, CENTER, titleSize, titleColor);
}

// Return whether the mouse is on the button
boolean DrawStartButton(boolean renderButton)
{
  String startText = "Start game";
  int textSize = 30;
  int textColor = #FFFFFF;
  int buttonX = width / 2;
  int buttonY = height / 2;
  int buttonWidth = 200;
  int buttonHeight = 100;
  int buttonRadius = 0;
  int buttonColor = #555555;
  
  if (renderButton)
  {
    DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, 4);
  }
  
  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}
