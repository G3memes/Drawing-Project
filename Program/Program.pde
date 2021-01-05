//Global Variables
float canvas_x, canvas_y, canvas_height, canvas_width;
float toolbar_x, toolbar_y, toolbar_width, toolbar_height;
float pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height;
color white, light_blue, grey;


void setup() {
  fullScreen();
  populating_variables();
  fill(light_blue);
  rect(toolbar_x, toolbar_y, toolbar_width, toolbar_height);
  fill(white);
  rect(canvas_x, canvas_y, canvas_width, canvas_height);
}

void draw() {
}


void mousePressed() {
}
