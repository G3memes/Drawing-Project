void shapes_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(shapes_dropdown_rect_x, shapes_dropdown_rect_y, shapes_dropdown_rect_width, shapes_dropdown_rect_height);
  strokeWeight(1);

  //---------------------------------------------DROPDOWN-CIRCLE------------------------------------------------------------
  if (selected_circle == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(circle_but_text, shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
  }
  if (selected_circle == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(circle_but_text, shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
  }

  //---------------------------------------------DROPDOWN-SQUARE------------------------------------------------------------
  if (selected_square == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(square_but_text, shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
  }
  if (selected_square == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(square_but_text, shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
  }
}
