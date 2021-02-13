void volume() {
  //---------------------------------------------VOLUME-DISPLAY------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(volume_display_x, volume_display_y, volume_display_width, volume_display_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(volume_text, volume_display_x, volume_display_y, volume_display_width, volume_display_height);

  //---------------------------------------------VOLUME-INCREASE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(volume_increase_x, volume_increase_y, volume_width, volume_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(volume_plus_text, volume_increase_x, volume_increase_y, volume_width, volume_height);

  //---------------------------------------------VOLUME-INCREASE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(volume_decrease_x, volume_decrease_y, volume_width, volume_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(volume_minus_text, volume_decrease_x, volume_decrease_y, volume_width, volume_height);
}
