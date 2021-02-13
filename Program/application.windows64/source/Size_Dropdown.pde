void size_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(size_dropdown_rect_x, size_dropdown_rect_y, size_dropdown_rect_width, size_dropdown_rect_height);
  strokeWeight(1);

  //---------------------------------------------DROPDOWN-1------------------------------------------------------------
  if (selected_size_1 == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(size_dropdown_1_x, size_dropdown_1_y, size_dropdown_1_width, size_dropdown_1_height);
    line(size_dropdown_1_x+displayWidth*1/100, size_dropdown_1_y+displayWidth*1/100, size_dropdown_1_x+displayWidth*1/25, size_dropdown_1_y+displayWidth*1/100);
  }
  if (selected_size_1 == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(size_dropdown_1_x, size_dropdown_1_y, size_dropdown_1_width, size_dropdown_1_height);
    line(size_dropdown_1_x+displayWidth*1/100, size_dropdown_1_y+displayWidth*1/100, size_dropdown_1_x+displayWidth*1/25, size_dropdown_1_y+displayWidth*1/100);
  }

  //---------------------------------------------DROPDOWN-2------------------------------------------------------------
  if (selected_size_2 == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(size_dropdown_2_x, size_dropdown_2_y, size_dropdown_2_width, size_dropdown_2_height);
    strokeWeight(5);
    line(size_dropdown_2_x+displayWidth*1/100, size_dropdown_2_y+displayWidth*1/100, size_dropdown_2_x+displayWidth*1/25, size_dropdown_2_y+displayWidth*1/100);
  }
  if (selected_size_2 == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(size_dropdown_2_x, size_dropdown_2_y, size_dropdown_2_width, size_dropdown_2_height);
    strokeWeight(5);
    line(size_dropdown_2_x+displayWidth*1/100, size_dropdown_2_y+displayWidth*1/100, size_dropdown_2_x+displayWidth*1/25, size_dropdown_2_y+displayWidth*1/100);
  }

  //---------------------------------------------DROPDOWN-3------------------------------------------------------------
  if (selected_size_3 == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(size_dropdown_3_x, size_dropdown_3_y, size_dropdown_3_width, size_dropdown_3_height);
    strokeWeight(10);
    line(size_dropdown_3_x+displayWidth*1/100, size_dropdown_3_y+displayWidth*1/100, size_dropdown_3_x+displayWidth*1/25, size_dropdown_3_y+displayWidth*1/100);
  }
  if (selected_size_3 == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(size_dropdown_3_x, size_dropdown_3_y, size_dropdown_3_width, size_dropdown_3_height);
    strokeWeight(10);
    line(size_dropdown_3_x+displayWidth*1/100, size_dropdown_3_y+displayWidth*1/100, size_dropdown_3_x+displayWidth*1/25, size_dropdown_3_y+displayWidth*1/100);
  }
}
