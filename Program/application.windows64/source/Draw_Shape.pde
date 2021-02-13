void draw_shape() {

  //---------------------------------------------CIRCLE------------------------------------------------------------
  if (circle == true) {
    if (mouseX > canvas_x && mouseX < canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {     
      x = mouseX;
      y = mouseY;
      fill(colour);
      circle(x, y, displayWidth*1/20);
    }
  }

  //---------------------------------------------SQUARE------------------------------------------------------------
  if (square == true) {
    if (mouseX > canvas_x && mouseX < canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
      x = mouseX;
      y = mouseY;
      fill(colour);
      rect(x-((displayWidth*1/20)/2), y-((displayWidth*1/20)/2), displayWidth*1/20, displayWidth*1/20);
    }
  }
}
