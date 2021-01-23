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
    circle = false;
    square = false;
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
    circle = false;
    square = false;
  }

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  if (mouseX > fill_but_x && mouseX <  fill_but_x + pencil_but_width && mouseY > fill_but_y && mouseY < fill_but_y + pencil_but_height) {
    eraser = false;
    pencil = false;
    fill = true;
    marker = false;
    pen = false;
    brush = false;
    circle = false;
    square = false;
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
    circle = false;
    square = false;
  }

  //---------------------------------------------PEN-BUTTON------------------------------------------------------------
  if (mouseX >  style_dropdown_pen_x && mouseX <   style_dropdown_pen_x + style_dropdown_pen_width && mouseY >  style_dropdown_pen_y && mouseY <  style_dropdown_pen_y + style_dropdown_pen_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = true;
    brush = false;
    circle = false;
    square = false;
  }

  //---------------------------------------------BRUSH-BUTTON------------------------------------------------------------
  if (mouseX >  style_dropdown_brush_x && mouseX < style_dropdown_brush_x + style_dropdown_brush_width && mouseY >  style_dropdown_brush_y && mouseY <  style_dropdown_brush_y + style_dropdown_brush_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = false;
    brush = true;
    circle = false;
    square = false;
  }

  //---------------------------------------------SIZE-BUTTON------------------------------------------------------------
  if (mouseX > size_but_x && mouseX < size_but_x + pencil_but_width && mouseY > size_but_y && mouseY < size_but_y + pencil_but_height) {
    if (size_dropdown == false) {
      size_dropdown = true;
    }
    if (size_dropdown_selected == true) {
      size_dropdown = false;
      size_dropdown_selected = false;
    }
  }
  //---------------------------------------------BUTTON-ONE------------------------------------------------------------
  if (mouseX >  size_dropdown_1_x && mouseX < size_dropdown_1_x + size_dropdown_1_width && mouseY >  size_dropdown_1_y && mouseY <  size_dropdown_1_y + size_dropdown_1_height) {
    line_weight_1 = true;
    line_weight_2 = false;
    line_weight_3 = false;
  }

  //---------------------------------------------BUTTON-TWO------------------------------------------------------------
  if (mouseX >  size_dropdown_2_x && mouseX <   size_dropdown_2_x + size_dropdown_2_width && mouseY >  size_dropdown_2_y && mouseY <  size_dropdown_2_y + size_dropdown_2_height) {
    line_weight_1 = false;
    line_weight_2 = true;
    line_weight_3 = false;
  }

  //---------------------------------------------BUTTON-THREE------------------------------------------------------------
  if (mouseX >  size_dropdown_3_x && mouseX < size_dropdown_3_x + size_dropdown_3_width && mouseY >  size_dropdown_3_y && mouseY <  size_dropdown_3_y + size_dropdown_3_height) {
    line_weight_1 = false;
    line_weight_2 = false;
    line_weight_3 = true;
  }

  //---------------------------------------------SHAPES-BUTTON------------------------------------------------------------
  if (mouseX > shapes_but_x && mouseX < shapes_but_x + pencil_but_width && mouseY > shapes_but_y && mouseY < shapes_but_y + pencil_but_height) {
    if (shapes_dropdown == false) {
      shapes_dropdown = true;
    }
    if (shapes_dropdown_selected == true) {
      shapes_dropdown = false;
      shapes_dropdown_selected = false;
    }
  }

  //---------------------------------------------CIRCLE-BUTTON------------------------------------------------------------
  if (mouseX > shapes_dropdown_circle_x && mouseX <   shapes_dropdown_circle_x + shapes_dropdown_circle_width && mouseY >  shapes_dropdown_circle_y && mouseY <  shapes_dropdown_circle_y + shapes_dropdown_circle_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = false;
    brush = false;
    circle = true;
    square = false;
  }

  //---------------------------------------------SQUARE-BUTTON------------------------------------------------------------
  if (mouseX > shapes_dropdown_square_x && mouseX < shapes_dropdown_square_x + shapes_dropdown_square_width && mouseY > shapes_dropdown_square_y && mouseY < shapes_dropdown_square_y + shapes_dropdown_square_height) {
    pencil = false;
    eraser = false;
    fill = false;
    marker = false;
    pen = false;
    brush = false;
    circle = false;
    square = true;
  }
}
