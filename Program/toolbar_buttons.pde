void toolbar_button() {
  fill(grey);
  rect(pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, 15);
  textAlign(CENTER, CENTER);
  text(pencil_but_text, pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height); 
  //
  fill(grey);
  rect(eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, 15);
  textAlign(CENTER, CENTER);
  text(eraser_but_text, eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
}
