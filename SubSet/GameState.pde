// Variables that keep track of the state of the game
int[] numbers = new int[81];
int[] colors = new int[81];
int[] opacities = new int[81];
int[] shapes = new int[81];
boolean[] used = new boolean[81];

IntList shown = new IntList();
IntList selected = new IntList();
IntList playOrder = new IntList();

ArrayList<int[]> gameGrid = new ArrayList<int[]>();

int score = 0;

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
  score = 0;
  shown.clear();
  selected.clear();

  for (int i = 0; i < used.length; i++)
  {
    used[i] = false;
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
