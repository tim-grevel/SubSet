boolean mouseOnStartButton;

void ShowTitleScreen()
{
  ShowTitle();
  ShowStartButton();
}

void HandleTitleScreenButtons()
{
  if (mouseOnStartButton)
   {
     SetScreen(GAME_SCREEN);
   }
}

void ShowTitle()
{
  String titleText = "SubSet";
  int titleX = width / 2;
  int titleY = 100;
  int titleSize = 80;
  int titleColor = #BB00BB; // Purple~ish
  
  DrawText(titleText, titleX, titleY, CENTER, CENTER, titleSize, titleColor);
}

void ShowStartButton()
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
  
  DrawRectButton(startText, textSize, textColor, buttonX, buttonY, buttonWidth, buttonHeight, buttonRadius, buttonColor, 255, 4);
  
  mouseOnStartButton = MouseOnRect(buttonX, buttonY, buttonWidth, buttonHeight);
}
