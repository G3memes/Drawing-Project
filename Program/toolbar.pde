void tool_bar_section() {
  //---------------------------------------------TOOLBAR------------------------------------------------------------
  //Draws the toolbar
  noStroke();
  fill(light_blue);
  rect(toolbar_x, toolbar_y, toolbar_width, toolbar_height);
  toolbar_button(); //Draws the buttons
}
