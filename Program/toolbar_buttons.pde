void toolbar_button() {
  //---------------------------------------------PENCIL-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(pencil_but_text, pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height); 

  //---------------------------------------------ERASER-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(eraser_but_text, eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(fill_but_text, fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------STYLE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(style_but_x, style_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(style_but_text, style_but_x, style_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------SIZE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(size_but_x, size_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(size_but_text, size_but_x, size_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------SHAPES-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(selected);
  rect(shapes_but_x, shapes_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(shapes_but_text, shapes_but_x, shapes_but_y, pencil_but_width, pencil_but_height);
}
