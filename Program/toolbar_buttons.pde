void toolbar_button() {
  //---------------------------------------------PENCIL-BUTTON------------------------------------------------------------
  if (selected_pencil == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pencil_but_text, pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
  }
  if (selected_pencil == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pencil_but_text, pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height);
  }

  //---------------------------------------------ERASER-BUTTON------------------------------------------------------------
  if (selected_eraser == false) {
    stroke(0);
    fill(grey);
    rect(eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(eraser_but_text, eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
  }
  if (selected_eraser == true) {
    stroke(0);
    fill(white);
    rect(eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(eraser_but_text, eraser_but_x, eraser_but_y, pencil_but_width, pencil_but_height);
  }

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  if (selected_fill == false) {
    stroke(0);
    fill(grey);
    rect(fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(fill_but_text, fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
  }
  if (selected_fill == true) {
    stroke(0);
    fill(white);
    rect(fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(fill_but_text, fill_but_x, fill_but_y, pencil_but_width, pencil_but_height);
  }

  //---------------------------------------------STYLE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(style_but_x, style_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(style_but_text, style_but_x, style_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------SIZE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(size_but_x, size_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(size_but_text, size_but_x, size_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------SHAPES-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(shapes_but_x, shapes_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(shapes_but_text, shapes_but_x, shapes_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------COLOUR-BUTTON------------------------------------------------------------
  if (pencil == true) {
    colour_rightnow = dark_grey;
  } else if (eraser == true) {
    colour_rightnow = white;
  } else {
    colour_rightnow = colour;
  }
  stroke(0);
  strokeWeight(1);
  fill(colour_rightnow);
  rect(colour_picked_x, colour_picked_y, colour_rect_width, colour_picked_height);

  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(colour_rect_x, colour_rect_y, colour_rect_width, colour_rect_height);

  //Colour Box ONE
  stroke(0);
  strokeWeight(1);
  fill(light_yellow);
  rect(colour_box_x_1, colour_box_y_1, colour_box_width, colour_box_height);

  //Colour Box TWO
  stroke(0);
  strokeWeight(1);
  fill(yellow);
  rect(colour_box_x_2, colour_box_y_2, colour_box_width, colour_box_height);

  //Colour Box THREE
  stroke(0);
  strokeWeight(1);
  fill(orange);
  rect(colour_box_x_3, colour_box_y_3, colour_box_width, colour_box_height);

  //Colour Box FOUR
  stroke(0);
  strokeWeight(1);
  fill(red);
  rect(colour_box_x_4, colour_box_y_4, colour_box_width, colour_box_height);

  //Colour Box FIVE
  stroke(0);
  strokeWeight(1);
  fill(pink);
  rect(colour_box_x_5, colour_box_y_5, colour_box_width, colour_box_height);

  //Colour Box SIX
  stroke(0);
  strokeWeight(1);
  fill(purple);
  rect(colour_box_x_6, colour_box_y_6, colour_box_width, colour_box_height);

  //Colour Box SEVEN
  stroke(0);
  strokeWeight(1);
  fill(dark_blue);
  rect(colour_box_x_7, colour_box_y_7, colour_box_width, colour_box_height);

  //Colour Box EIGHT
  stroke(0);
  strokeWeight(1);
  fill(blue);
  rect(colour_box_x_8, colour_box_y_8, colour_box_width, colour_box_height);

  //Colour Box NINE
  stroke(0);
  strokeWeight(1);
  fill(dark_green);
  rect(colour_box_x_9, colour_box_y_9, colour_box_width, colour_box_height);

  //Colour Box TEN
  stroke(0);
  strokeWeight(1);
  fill(green);
  rect(colour_box_x_10, colour_box_y_10, colour_box_width, colour_box_height);

  //Colour Box ELEVEN 
  stroke(0);
  strokeWeight(1);
  fill(black);
  rect(colour_box_x_11, colour_box_y_11, colour_box_width, colour_box_height);

  //Colour Box TWELVE
  stroke(0);
  strokeWeight(1);
  fill(white);
  rect(colour_box_x_12, colour_box_y_12, colour_box_width, colour_box_height);

  //---------------------------------------------EXIT-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(exit_but_x, exit_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(exit_but_text, exit_but_x, exit_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------MUSIC-ON/OFF-BUTTON------------------------------------------------------------
  if (song[1].isPlaying()) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(music_but_x, music_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(music_but_text, music_but_x, music_but_y, pencil_but_width, pencil_but_height);
  } else {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(music_but_x, music_but_y, pencil_but_width, pencil_but_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(music_off_but_text, music_but_x, music_but_y, pencil_but_width, pencil_but_height);
  }

  //---------------------------------------------SAVE-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(save_but_x, save_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(save_but_text, save_but_x, save_but_y, pencil_but_width, pencil_but_height);

  //---------------------------------------------CLEAR-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(clear_but_x, clear_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(clear_but_text, clear_but_x, clear_but_y, pencil_but_width, pencil_but_height);
}
