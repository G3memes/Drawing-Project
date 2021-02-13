void dropdown_selected() {

  //----------------------------------------------STYLE-DROPDOWN--------------------------------------------------------------
  if (style_dropdown == true) {
    style_dropdown();
    style_dropdown_selected = true;
  } 
  if (style_dropdown_selected == false) {
    toolbar_button();
  }

  //----------------------------------------------SIZE-DROPDOWN--------------------------------------------------------------
  if (size_dropdown == true) {
    size_dropdown();
    size_dropdown_selected = true;
  }
  if (size_dropdown_selected == false) {
    toolbar_button();
  }

  //----------------------------------------------SHAPES-DROPDOWN--------------------------------------------------------------
  if (shapes_dropdown == true) {
    shapes_dropdown();
    shapes_dropdown_selected = true;
  }
  if (shapes_dropdown_selected == false) {
    toolbar_button();
  }
}
