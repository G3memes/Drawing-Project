void buttons() {
  //---------------------------------------------PENCIL-BUTTON------------------------------------------------------------
  //If pressed, turns on the pencil and turns all other drawing tools off
  if (mouseX > pencil_but_x && mouseX <  pencil_but_x + pencil_but_width && mouseY > pencil_but_y && mouseY < pencil_but_y + pencil_but_height) {
    pencil = true;
    eraser = false;
    fill = false;
    marker = false;
    pen = false;
    brush = false;
  }

  //--------------------------------------------------ERASER-BUTTON--------------------------------------------------------------------
  //If pressed, turns on the eraser and turns all other drawing tools off
  if (mouseX > eraser_but_x && mouseX <  eraser_but_x + pencil_but_width && mouseY > eraser_but_y && mouseY < eraser_but_y + pencil_but_height) {
    eraser = true;
    pencil = false;
    fill = false;
    marker = false;
    pen = false;
    brush = false;
  }

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  if (mouseX > fill_but_x && mouseX <  fill_but_x + pencil_but_width && mouseY > fill_but_y && mouseY < fill_but_y + pencil_but_height) {
    eraser = false;
    pencil = false;
    fill = true;
    marker = false;
    pen = false;
    brush = false;
  }

  //---------------------------------------------STYLE-BUTTON------------------------------------------------------------
  if (mouseX > style_but_x && mouseX <  style_but_x + pencil_but_width && mouseY > style_but_y && mouseY < style_but_y + pencil_but_height) {
    if (style_dropdown == false) {
      style_dropdown = true;
    }
    if (style_dropdown_selected == true) {
      style_dropdown = false;
      style_dropdown_selected = false;
    }
  }

  //---------------------------------------------MARKER-BUTTON------------------------------------------------------------
  if (mouseX >  style_dropdown_marker_x && mouseX < style_dropdown_marker_x + style_dropdown_marker_width && mouseY >  style_dropdown_marker_y && mouseY <  style_dropdown_marker_y + style_dropdown_marker_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = true;
    pen = false;
    brush = false;
  }

  //---------------------------------------------PEN-BUTTON------------------------------------------------------------
  if (mouseX >  style_dropdown_pen_x && mouseX <   style_dropdown_pen_x + style_dropdown_pen_width && mouseY >  style_dropdown_pen_y && mouseY <  style_dropdown_pen_y + style_dropdown_pen_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = true;
    brush = false;
  }

  //---------------------------------------------BRUSH-BUTTON------------------------------------------------------------
  if (mouseX >  style_dropdown_brush_x && mouseX < style_dropdown_brush_x + style_dropdown_brush_width && mouseY >  style_dropdown_brush_y && mouseY <  style_dropdown_brush_y + style_dropdown_brush_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = false;
    brush = true;
  }
}
