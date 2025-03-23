// Variables that keep track of the state of the game
IntList shown = new IntList();
IntList selected = new IntList();
IntList playOrder = new IntList();
IntList hints = new IntList();

ArrayList<int[]> gameGrid = new ArrayList<int[]>();

int turnCounter = 0;
int[] playerScores = new int[2];

// Keeps track of the current screen the user is on
int currentScreen = TITLE_SCREEN;

void StartGame()
{
  ResetGame();
  SetPlayOrder();
  TakeFromPile(12);
  DrawGameScreen();
}

void ResetGame()
{
  shown.clear();
  selected.clear();
  hints.clear();
  ResetScores();
}

void ResetScores()
{
  for (int i = 0; i < playerScores.length; i++)
  {
    playerScores[i] = 0;
  }
}

void SetPlayOrder()
{
  // Ensure playOrder is initialized
  playOrder = new IntList();

  // Add index for every card
  for (int i = 0; i < 81; i++)
  {
    playOrder.append(i);
  }

  // Shuffle to create random card dealing order
  playOrder.shuffle();
}

int GetCurrentTurn()
{
  return turnCounter % playerScores.length;
}

boolean GameIsOver()
{
  // If there are no cards left in the pile and no sets left on screen, the game is over
  return playOrder.size() + GetAllSetsInList(shown).size() == 0;
}
