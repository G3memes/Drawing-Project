//Global Variables
float canvas_x, canvas_y, canvas_height, canvas_width;
float toolbar_x, toolbar_y, toolbar_width, toolbar_height;
color white, light_blue;


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


void mousePressed(){
}
