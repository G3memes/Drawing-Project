//Global Variables

//---------------------------------------------CANVAS------------------------------------------------------------
float canvas_x, canvas_y, canvas_height, canvas_width; //Canvas Variables

//---------------------------------------------TOOLBAR------------------------------------------------------------
float toolbar_x, toolbar_y, toolbar_width, toolbar_height; //Toolbar Variables

//---------------------------------------------PENCIL------------------------------------------------------------
float pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height; //Pencil Button Variables

//---------------------------------------------ERASER------------------------------------------------------------
float eraser_but_x, eraser_but_y; //Eraser Button Variables

//---------------------------------------------FILL------------------------------------------------------------
float fill_but_x, fill_but_y; // Fill Button Variables

//---------------------------------------------STYLE------------------------------------------------------------
float style_but_x, style_but_y; //Style Button Variables
float style_dropdown_rect_x, style_dropdown_rect_y, style_dropdown_rect_width, style_dropdown_rect_height; //Style Dropdown Variables
float style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height; //Style Dropdown Marker Button Vairables
float style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height; //Style Dropdown Pen Button Variables
float style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height; //Style Dropdown Brush Button Variables

//---------------------------------------------SIZE------------------------------------------------------------
float size_but_x, size_but_y; //Size Button Variables
float size_dropdown_rect_x, size_dropdown_rect_y, size_dropdown_rect_width, size_dropdown_rect_height; //Size Dropdown Variables
float size_dropdown_1_x, size_dropdown_1_y, size_dropdown_1_width, size_dropdown_1_height; //Size Dropdown 1 Button Vairables
float size_dropdown_2_x, size_dropdown_2_y, size_dropdown_2_width, size_dropdown_2_height; //Size Dropdown 2 Button Variables
float size_dropdown_3_x, size_dropdown_3_y, size_dropdown_3_width, size_dropdown_3_height; //Size Dropdown 3 Button Variables

//---------------------------------------------SHAPES------------------------------------------------------------
float shapes_but_x, shapes_but_y; //Shapes Button Variables
float shapes_dropdown_rect_x, shapes_dropdown_rect_y, shapes_dropdown_rect_width, shapes_dropdown_rect_height; //Shapes Dropdown Variables
float shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height; //Shapes Dropdown Variables
float shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height; //Shapes Dropdown Variables

//---------------------------------------------BUTTON_TEXTS------------------------------------------------------------
String pencil_but_text, eraser_but_text, fill_but_text, style_but_text, marker_but_text, pen_but_text, brush_but_text, size_but_text, shapes_but_text, circle_but_text, square_but_text; //Button Text Variables 

//---------------------------------------------COLOUR-SELECTOR------------------------------------------------------------
float colour_rect_x, colour_rect_y, colour_rect_width, colour_rect_height;
float colour_box_x_1, colour_box_y_1, colour_box_width, colour_box_height;
float colour_box_x_2, colour_box_y_2;
float colour_box_x_3, colour_box_y_3;
float colour_box_x_4, colour_box_y_4;
float colour_box_x_5, colour_box_y_5;
float colour_box_x_6, colour_box_y_6;
float colour_box_x_7, colour_box_y_7;
float colour_box_x_8, colour_box_y_8;
float colour_box_x_9, colour_box_y_9;
float colour_box_x_10, colour_box_y_10;
float colour_box_x_11, colour_box_y_11;
float colour_box_x_12, colour_box_y_12;
float colour_picked_x, colour_picked_y, colour_picked_height;

//---------------------------------------------COLOURS------------------------------------------------------------
color white, light_blue, grey, black, dark_grey; //Colour Variables
color colour; //Resettable Colour Variable
PFont but_font; //Font
color light_yellow, yellow, orange, red, pink, purple, dark_blue, blue, dark_green, green;

//---------------------------------------------BOOLEANS------------------------------------------------------------
boolean clear; //Whether or not user wants to clear the canvas
boolean pencil; //Whether or not user has selected the pencil tool
boolean eraser; //Whether or not user has selected the eraser tool
boolean fill; //Whether or not user has selected the fill tool
boolean style; //Whether or not user has selected the style tool
boolean style_dropdown, style_dropdown_selected; //Whether or not the dropdown list should appear
boolean size_dropdown, size_dropdown_selected;
boolean shapes_dropdown, shapes_dropdown_selected;
boolean marker; //Whether or not user has selected the marker tool
boolean pen; //Whether or not user has selected the pen tool
boolean brush; //Whether or not user has selected the brush tool
boolean line_weight_1;
boolean line_weight_2;
boolean line_weight_3;
boolean circle;
boolean square;
color colour_rightnow;
boolean selected_pencil, selected_eraser, selected_fill, selected_marker, selected_pen, selected_brush, selected_size_1, selected_size_2, selected_size_3, selected_circle, selected_square;
float stroke_weight;
float x, y;

//-------------------------------------------------SETUP---------------------------------------------------------------------
void setup() {
  fullScreen();
  populating_variables(); //Populates all of the variables
  tool_bar_section(); //Draws all of the buttons in the toolbar
  canvas();
}

//--------------------------------------------------DRAW--------------------------------------------------------------------
void draw() {
  tool_bar_section(); //Draws all of the buttons in the toolbar
  tool_selected();
  dropdown_selected();
  if (clear == true) {
    canvas();
    clear = false;
  }
}

//------------------------------------------------------MOUSE-PRESSED----------------------------------------------------------------
void mousePressed() {
  buttons();
  draw_shape();
}

//------------------------------------------------------KEY-PRESSED----------------------------------------------------------------
void keyPressed() {
  if (key == 'c' || key == 'C') {
    clear = true;
  }
}
