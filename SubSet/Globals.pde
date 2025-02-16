// Screen
final int SCREEN_WIDTH = 1600; 
final int SCREEN_HEIGHT = 800;
final int BACKGROUND_COLOR = #333333;

final int TITLE_SCREEN = 0;
final int GAME_SCREEN = 1;

// Grid
final int GRID_ROWS = 3;

final int GRID_GAP_X = 20;
final int GRID_GAP_Y = 20;

// Card
final int NUMBER = 0;
final int COLOR = 1;
final int OPACITY = 2;
final int SHAPE = 3;

final int CARD_WIDTH = 150;
final int CARD_HEIGHT = 200;
final int CARD_RADIUS = 10;

final int SHAPE_WIDTH = CARD_WIDTH * 10 / 15;
final int SHAPE_HEIGHT = CARD_HEIGHT / 5;
final int SHAPE_BORDER_WEIGHT = 3;

final int[] SHAPE_OFFSETS = {-60, -30, 0, 30, 60};

final int CARD_BASE_COLOR = 255;
final int CARD_SELECTED_BASE_COLOR = 180;

// Shape
final IntList SHAPE_COUNTS = new IntList(1, 2, 3);
final IntList SHAPE_COLORS = new IntList(#FF0000, #00FF00, #0000FF);
final IntList SHAPE_TRANSPARENCIES = new IntList(255, 100, 0);
final StringList SHAPE_TYPES = new StringList("Diamond", "Oval", "Rectangle");
