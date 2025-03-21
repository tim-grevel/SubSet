void DrawTitleScreen()
{
  DrawTitle();
  DrawStartButton();
}

void TitleScreenMousePressed()
{
  if (DrawStartButton())
  {
    currentScreen = GAME_SCREEN;
    StartGame();
  }
}

void DrawTitle()
{
  String titleText = "SubSet";
  int titleX = width / 2;
  int titleY = 100;
  int titleSize = 80;
  int titleColor = #FFFFFF;

  DrawText(titleText, titleX, titleY, CENTER, CENTER, titleSize, titleColor);
}

// Return whether the mouse is on the button
boolean DrawStartButton()
{
  String startText = "Start game";
  int textSize = 30;
  int buttonX = width / 2;
  int buttonY = height / 2;
  int buttonWidth = 200;
  int buttonHeight = 100;
  int buttonRadius = 0;
  int textColor = 255;
  int buttonColor = BUTTON_COLOR;
  int strokeColor = 0;

  DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, strokeColor, 4);

  return MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}
