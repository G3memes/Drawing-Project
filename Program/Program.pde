//Global Variables

float canvas_x, canvas_y, canvas_height, canvas_width; //Canvas Variables
float toolbar_x, toolbar_y, toolbar_width, toolbar_height; //Toolbar Variables
float pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height; //Pencil Button Variables
float eraser_but_x, eraser_but_y; //Eraser Button Variables
float fill_but_x, fill_but_y; // Fill Button Variables
float style_but_x, style_but_y;
float style_dropdown_rect_x, style_dropdown_rect_y, style_dropdown_rect_width, style_dropdown_rect_height;
float style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height;
String marker_but_text;
float style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height;
String pen_but_text;
float style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height;
String brush_but_text;
String pencil_but_text, eraser_but_text, fill_but_text, style_but_text; //Button Text Variables
color white, light_blue, grey, black; //Colour Variables
color colour; //Resettable Colour Variable
PFont but_font; //Font
boolean clear; //Checks whether or not user wants to clear the canvas
boolean pencil; //Checks whether or not user has selected the pencil tool
boolean eraser; //Checks whether or not user has selected the eraser tool
boolean fill;
boolean style;
boolean style_dropdown, style_dropdown_selected;
boolean marker;
boolean pen;
boolean brush;
float stroke_weight;

//-------------------------------------------------SETUP---------------------------------------------------------------------
void setup() {
  fullScreen();
  populating_variables(); //Populates all of the variables
  tool_bar_section(); //Draws all of the buttons in the toolbar
  canvas();
}

//--------------------------------------------------DRAW--------------------------------------------------------------------
void draw() {
  tool_selected();
  if (style_dropdown == true) {
    style_dropdown();
    style_dropdown_selected = true;
  }
  if (style_dropdown == false) {
    tool_bar_section();
  }
  if (clear == true) {
    canvas();
    clear = false;
  }
}

//------------------------------------------------------MOUSE-PRESSED----------------------------------------------------------------
void mousePressed() {
  buttons();
}

//------------------------------------------------------KEY-PRESSED----------------------------------------------------------------
void keyPressed() {
  if (key == 'c' || key == 'C') {
    clear = true;
  }
}
