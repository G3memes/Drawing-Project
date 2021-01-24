void tool_selected() {

  // Draws line if mouse is pressed
  if (mousePressed == true) {

    //---------------------------------------------PENCIL------------------------------------------------------------
    //If user has selected pencil, draws using pencil
    if (pencil == true) {
      if (mouseX > canvas_x && mouseX <  canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        stroke(dark_grey);
        strokeWeight(stroke_weight);
        smooth();
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }

    //---------------------------------------------ERASER------------------------------------------------------------
    //If user has selected eraser, draws using white stroke to erase
    if (eraser == true) {
      if (mouseX > canvas_x && mouseX < canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        stroke(white);
        strokeWeight(stroke_weight);
        smooth();
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }
    //---------------------------------------------FILL------------------------------------------------------------
    //If user has selected fill, fills the canvas with the colour that is selected
    if (fill == true) {
      if (mouseX > canvas_x && mouseX < canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        noStroke();
        fill(colour);
        rect(canvas_x, canvas_y, canvas_width, canvas_height);
      }
    }

    //---------------------------------------------MARKER------------------------------------------------------------
    if (marker == true) {
      if (mouseX >  style_dropdown_marker_x && mouseX <   style_dropdown_marker_x + style_dropdown_marker_width && mouseY >  style_dropdown_marker_y && mouseY <  style_dropdown_marker_y + style_dropdown_marker_height) {
        // MARKER CODE GOES HERE
      }
    }

    //---------------------------------------------PEN------------------------------------------------------------
    if (pen == true) {
      if (mouseX > canvas_x && mouseX <  canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        stroke(colour);
        strokeWeight(stroke_weight);
        smooth();
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }

    //---------------------------------------------BRUSH------------------------------------------------------------
    if (brush == true) {
      if (mouseX >  style_dropdown_brush_x && mouseX < style_dropdown_brush_x + style_dropdown_brush_width && mouseY >  style_dropdown_brush_y && mouseY <  style_dropdown_brush_y + style_dropdown_brush_height) {
        // BRUSH CODE GOES HERE
      }
    }
  }

  //---------------------------------------------LINE-WEIGHT-ONE------------------------------------------------------------
  if (line_weight_1 == true) {
    if (mouseX >  size_dropdown_1_x && mouseX < size_dropdown_1_x + size_dropdown_1_width && mouseY >  size_dropdown_1_y && mouseY <  size_dropdown_1_y + size_dropdown_1_height) {
      stroke_weight = 1;
    }
  }

  //---------------------------------------------LINE-WEIGHT-TWO------------------------------------------------------------
  if (line_weight_2 == true) {
    if (mouseX >  size_dropdown_2_x && mouseX < size_dropdown_2_x + size_dropdown_2_width && mouseY >  size_dropdown_2_y && mouseY <  size_dropdown_2_y + size_dropdown_2_height) {
      stroke_weight = 5;
    }
  }

  //---------------------------------------------LINE-WEIGHT-THREE------------------------------------------------------------
  if (line_weight_3 == true) {
    if (mouseX >  size_dropdown_3_x && mouseX < size_dropdown_3_x + size_dropdown_3_width && mouseY >  size_dropdown_3_y && mouseY <  size_dropdown_3_y + size_dropdown_3_height) {
      stroke_weight = 10;
    }
  }

  //---------------------------------------------EXIT-BUTTON------------------------------------------------------------
  if (exit == true) {
    exit();
  }
  
  //---------------------------------------------SAVE-BUTTON------------------------------------------------------------
  if (save == true) {
    PImage temp = get(0, 216, 1980, 1080);
    temp.save("New Save.png");
    saveP++;
    save = false;
  }
  //---------------------------------------------CLEAR-BUTTON------------------------------------------------------------
  if (clear == true) {
    canvas();
    clear = false;
  }
}
