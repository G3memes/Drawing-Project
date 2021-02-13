void style_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(style_dropdown_rect_x, style_dropdown_rect_y, style_dropdown_rect_width, style_dropdown_rect_height);

  //---------------------------------------------DROPDOWN-MARKER------------------------------------------------------------
  if (selected_marker == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(marker_but_text, style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
  }
  if (selected_marker == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(marker_but_text, style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
  }

  //---------------------------------------------DROPDOWN-PEN------------------------------------------------------------
  if (selected_pen == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pen_but_text, style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
  }
  if (selected_pen == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pen_but_text, style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
  }

  //---------------------------------------------DROPDOWN-BRUSH------------------------------------------------------------
  if (selected_brush == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(brush_but_text, style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
  }
  if (selected_brush == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(brush_but_text, style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
  }
}
