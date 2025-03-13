// Screen
final int SCREEN_WIDTH = 1600; 
final int SCREEN_HEIGHT = 900;
final int BACKGROUND_COLOR = #333333;

final int TITLE_SCREEN = 0;
final int GAME_SCREEN = 1;

// Grid
final int GRID_ROWS = 3;

final int GRID_GAP = 20;

// Card
final int CARD_WIDTH = SCREEN_WIDTH / 12;
final int CARD_HEIGHT = int(CARD_WIDTH * 1.56);
final int CARD_RADIUS = 10;

final int[] SHAPE_OFFSETS = {-60, -30, 0, 30, 60};

final int CARD_BASE_COLOR = 255;
final int CARD_SELECTED_BASE_COLOR = 180;

final IntList CARD_NUMBERS = new IntList(1, 2, 3);
final IntList CARD_COLORS = new IntList(#FF0000, #00FF00, #770077);
final IntList CARD_OPACITIES = new IntList(255, 100, 0);

// Shape
final int SHAPE_WIDTH = int(CARD_WIDTH / 1.5);
final int SHAPE_HEIGHT = CARD_HEIGHT / 5;
final int SHAPE_BORDER_WEIGHT = 3;
