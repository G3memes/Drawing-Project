void toolbar_button() {
  //---------------------------------------------PENCIL-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(pencil_but_text, pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height); 

  //---------------------------------------------ERASER-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(eraser_but_text, eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(fill_but_text, fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
  
  //---------------------------------------------STYLE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(style_but_x, style_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(style_but_text, style_but_x, style_but_y, pencil_but_width, pencil_but_height);
}
