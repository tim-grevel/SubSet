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
