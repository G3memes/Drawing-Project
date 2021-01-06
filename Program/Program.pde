//Global Variables
float canvas_x, canvas_y, canvas_height, canvas_width;
float toolbar_x, toolbar_y, toolbar_width, toolbar_height;
float pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height;
float eraser_but_x, eraser_but_y;
String pencil_but_text, eraser_but_text;
color white, light_blue, grey, black;
PFont but_font;

void setup() {
  fullScreen();
  populating_variables();
  fill(light_blue);
  rect(toolbar_x, toolbar_y, toolbar_width, toolbar_height);
  fill(white);
  rect(canvas_x, canvas_y, canvas_width, canvas_height);
  toolbar_button();
}

void draw() {
}


void mousePressed() {
}
