void shapes_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(shapes_dropdown_rect_x, shapes_dropdown_rect_y, shapes_dropdown_rect_width, shapes_dropdown_rect_height);
  strokeWeight(1);

  //---------------------------------------------DROPDOWN-CIRCLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(circle_but_text, shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height); 

  //---------------------------------------------DROPDOWN-SQUARE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(square_but_text, shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
}
