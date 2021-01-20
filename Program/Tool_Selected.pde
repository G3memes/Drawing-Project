void tool_selected() {

  // Draws line if mouse is pressed
  if (mousePressed == true) {

    //---------------------------------------------PENCIL------------------------------------------------------------
    //If user has selected pencil, draws using pencil
    if (pencil == true) {
      if (mouseX > canvas_x && mouseX <  canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        stroke(colour);
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
        strokeWeight(stroke_weight+5);
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
      if (mouseX >  style_dropdown_pen_x && mouseX <   style_dropdown_pen_x + style_dropdown_pen_width && mouseY >  style_dropdown_pen_y && mouseY <  style_dropdown_pen_y + style_dropdown_pen_height) {
        // PEN CODE GOES HERE
      }
    }

    //---------------------------------------------BRUSH------------------------------------------------------------
    if (brush == true) {
      if (mouseX >  style_dropdown_brush_x && mouseX < style_dropdown_brush_x + style_dropdown_brush_width && mouseY >  style_dropdown_brush_y && mouseY <  style_dropdown_brush_y + style_dropdown_brush_height) {
        // BRUSH CODE GOES HERE
      }
    }
  }
}