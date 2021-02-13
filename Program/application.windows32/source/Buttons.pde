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
    selected_pencil = true;
    selected_eraser = false;
    selected_fill = false;
    selected_marker = false;
    selected_pen = false;
    selected_brush = false;
    selected_circle = false;
    selected_square = false;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
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
    selected_pencil = false;
    selected_eraser = true;
    selected_fill = false;
    selected_marker = false;
    selected_pen = false;
    selected_brush = false;
    selected_circle = false;
    selected_square = false;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
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
    selected_pencil = false;
    selected_eraser = false;
    selected_fill = true;
    selected_marker = false;
    selected_pen = false;
    selected_brush = false;
    selected_circle = false;
    selected_square = false;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  //---------------------------------------------STYLE-BUTTON------------------------------------------------------------
  if (mouseX > style_but_x && mouseX <  style_but_x + pencil_but_width && mouseY > style_but_y && mouseY < style_but_y + pencil_but_height) {
    if (style_dropdown == false) {
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      style_dropdown = true;
    }
    if (style_dropdown_selected == true) {
      style_dropdown = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      style_dropdown_selected = false;
    }
  }

  //---------------------------------------------MARKER-BUTTON------------------------------------------------------------
  if (style_dropdown == true) {
    if (mouseX >  style_dropdown_marker_x && mouseX < style_dropdown_marker_x + style_dropdown_marker_width && mouseY >  style_dropdown_marker_y && mouseY <  style_dropdown_marker_y + style_dropdown_marker_height) {
      pencil = false;
      eraser = false;
      fill = false;
      marker = true;
      pen = false;
      brush = false;
      circle = false;
      square = false;
      selected_pencil = false;
      selected_eraser = false;
      selected_fill = false;
      selected_marker = true;
      selected_pen = false;
      selected_brush = false;
      selected_circle = false;
      selected_square = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }

    //---------------------------------------------PEN-BUTTON------------------------------------------------------------
    if (mouseX > style_dropdown_pen_x && mouseX <   style_dropdown_pen_x + style_dropdown_pen_width && mouseY >  style_dropdown_pen_y && mouseY <  style_dropdown_pen_y + style_dropdown_pen_height) {
      pencil = false;
      eraser = false;
      fill = false;
      marker = false;
      pen = true;
      brush = false;
      circle = false;
      square = false;
      selected_pencil = false;
      selected_eraser = false;
      selected_fill = false;
      selected_marker = false;
      selected_pen = true;
      selected_brush = false;
      selected_circle = false;
      selected_square = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
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
      selected_pencil = false;
      selected_eraser = false;
      selected_fill = false;
      selected_marker = false;
      selected_pen = false;
      selected_brush = true;
      selected_circle = false;
      selected_square = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }
  }

  //---------------------------------------------SIZE-BUTTON------------------------------------------------------------
  if (mouseX > size_but_x && mouseX < size_but_x + pencil_but_width && mouseY > size_but_y && mouseY < size_but_y + pencil_but_height) {
    if (size_dropdown == false) {
      size_dropdown = true;
      song[0].rewind();
      song[0].play();
    }
    if (size_dropdown_selected == true) {
      size_dropdown = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      size_dropdown_selected = false;
    }
  }
  if (size_dropdown == true) {
    //---------------------------------------------BUTTON-ONE------------------------------------------------------------
    if (mouseX >  size_dropdown_1_x && mouseX < size_dropdown_1_x + size_dropdown_1_width && mouseY >  size_dropdown_1_y && mouseY <  size_dropdown_1_y + size_dropdown_1_height) {
      selected_size_1 = true;
      selected_size_2 = false;
      selected_size_3 = false;
      line_weight_1 = true;
      line_weight_2 = false;
      line_weight_3 = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }

    //---------------------------------------------BUTTON-TWO------------------------------------------------------------
    if (mouseX >  size_dropdown_2_x && mouseX <   size_dropdown_2_x + size_dropdown_2_width && mouseY >  size_dropdown_2_y && mouseY <  size_dropdown_2_y + size_dropdown_2_height) {
      selected_size_1 = false;
      selected_size_2 = true;
      selected_size_3 = false;
      line_weight_1 = false;
      line_weight_2 = true;
      line_weight_3 = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }

    //---------------------------------------------BUTTON-THREE------------------------------------------------------------
    if (mouseX >  size_dropdown_3_x && mouseX < size_dropdown_3_x + size_dropdown_3_width && mouseY >  size_dropdown_3_y && mouseY <  size_dropdown_3_y + size_dropdown_3_height) {
      selected_size_1 = false;
      selected_size_2 = false;
      selected_size_3 = true;
      line_weight_1 = false;
      line_weight_2 = false;
      line_weight_3 = true;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }
  }

  //---------------------------------------------SHAPES-BUTTON------------------------------------------------------------
  if (mouseX > shapes_but_x && mouseX < shapes_but_x + pencil_but_width && mouseY > shapes_but_y && mouseY < shapes_but_y + pencil_but_height) {
    if (shapes_dropdown == false) {
      shapes_dropdown = true;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }
    if (shapes_dropdown_selected == true) {
      shapes_dropdown = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      shapes_dropdown_selected = false;
    }
  }

  if (shapes_dropdown == true) {
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
      selected_pencil = false;
      selected_eraser = false;
      selected_fill = false;
      selected_marker = false;
      selected_pen = false;
      selected_brush = false;
      selected_circle = true;
      selected_square = false;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
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
      selected_pencil = false;
      selected_eraser = false;
      selected_fill = false;
      selected_marker = false;
      selected_pen = false;
      selected_brush = false;
      selected_circle = false;
      selected_square = true;
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
    }
  }

  //---------------------------------------------COLOUR-BUTTON------------------------------------------------------------
  if (mouseX > colour_box_x_1 && mouseX < colour_box_x_1 + colour_box_width && mouseY > colour_box_y_1 && mouseY < colour_box_y_1 + colour_box_height) {
    colour = light_yellow;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_2 && mouseX < colour_box_x_2 + colour_box_width && mouseY > colour_box_y_2 && mouseY < colour_box_y_2 + colour_box_height) {
    colour = yellow;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_3 && mouseX < colour_box_x_3 + colour_box_width && mouseY > colour_box_y_3 && mouseY < colour_box_y_3 + colour_box_height) {
    colour = orange;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_4 && mouseX < colour_box_x_4 + colour_box_width && mouseY > colour_box_y_4 && mouseY < colour_box_y_4 + colour_box_height) {
    colour = red;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_5 && mouseX < colour_box_x_5 + colour_box_width && mouseY > colour_box_y_5 && mouseY < colour_box_y_5 + colour_box_height) {
    colour = pink;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_6 && mouseX < colour_box_x_6 + colour_box_width && mouseY > colour_box_y_6 && mouseY < colour_box_y_6 + colour_box_height) {
    colour = purple;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_7 && mouseX < colour_box_x_7 + colour_box_width && mouseY > colour_box_y_7 && mouseY < colour_box_y_7 + colour_box_height) {
    colour = dark_blue;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_8 && mouseX < colour_box_x_8 + colour_box_width && mouseY > colour_box_y_8 && mouseY < colour_box_y_8 + colour_box_height) {
    colour = blue;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_9 && mouseX < colour_box_x_9 + colour_box_width && mouseY > colour_box_y_9 && mouseY < colour_box_y_9 + colour_box_height) {
    colour = dark_green;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_10 && mouseX < colour_box_x_10 + colour_box_width && mouseY > colour_box_y_10 && mouseY < colour_box_y_10 + colour_box_height) {
    colour = green;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_11 && mouseX < colour_box_x_11 + colour_box_width && mouseY > colour_box_y_11 && mouseY < colour_box_y_11 + colour_box_height) {
    colour = black;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  if (mouseX > colour_box_x_12 && mouseX < colour_box_x_12 + colour_box_width && mouseY > colour_box_y_12 && mouseY < colour_box_y_12 + colour_box_height) {
    colour = white;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  //---------------------------------------------EXIT-BUTTON------------------------------------------------------------
  if (mouseX > exit_but_x && mouseX < exit_but_x + pencil_but_width && mouseY > exit_but_y && mouseY < exit_but_y + pencil_but_height) {
    exit = true;
  }

  //---------------------------------------------SQUARE-BUTTON------------------------------------------------------------
  if (mouseX > music_but_x && mouseX < music_but_x + pencil_but_width && mouseY > music_but_y && mouseY < music_but_y + pencil_but_height) {
    if (song[1].isPlaying()) {
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      song[1].loop();
      song[1].pause();
    } else {
      song[0].rewind();
      song[0].skip(275);
      song[0].play();
      song[1].play();
      song[1].loop();
    }
  }

  //---------------------------------------------SAVE-BUTTON------------------------------------------------------------
  if (mouseX > save_but_x && mouseX < save_but_x + pencil_but_width && mouseY > save_but_y && mouseY < save_but_y + pencil_but_height) {
    save = true;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }

  //---------------------------------------------CLEAR-BUTTON------------------------------------------------------------
  if (mouseX > clear_but_x && mouseX < clear_but_x + pencil_but_width && mouseY > clear_but_y && mouseY < clear_but_y + pencil_but_height) {
    clear = true;
    song[0].rewind();
    song[0].skip(275);
    song[0].play();
  }
}
