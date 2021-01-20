void populating_variables() {
  //---------------------------------------------CANVAS------------------------------------------------------------
  canvas_x = displayWidth*0;
  canvas_y = displayHeight*1/5;
  canvas_width = displayWidth;
  canvas_height = displayHeight;

  //---------------------------------------------TOOLBAR-----------------------------------------------------------------
  toolbar_x = displayWidth*0;
  toolbar_y = displayHeight*0;
  toolbar_width = displayWidth;
  toolbar_height = displayHeight*1/5;

  //---------------------------------------------PENCIL-BUTTON-----------------------------------------------------------------
  pencil_but_x = displayWidth*1/50;
  pencil_but_y = displayHeight*1/60;
  pencil_but_width = displayWidth*1/20;
  pencil_but_height = displayHeight*1/39;

  //----------------------------------------------ERASER-BUTTON-------------------------------------------------------------
  eraser_but_x = displayWidth*1/50;
  eraser_but_y = displayHeight*3/60;

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  fill_but_x = displayWidth*1/50;
  fill_but_y = displayHeight*5/60;

  //----------------------------------------------STYLE-BUTTON--------------------------------------------------------------
  style_but_x = displayWidth*6/50;
  style_but_y = displayHeight*1/60; 

  //----------------------------------------------STYLE-DROPDOWN-RECTANGLE--------------------------------------------------------------
  style_dropdown_rect_x = displayWidth*6/50;
  style_dropdown_rect_y = displayHeight*3/60; 
  style_dropdown_rect_width = displayWidth*1/20;
  style_dropdown_rect_height = displayHeight*1/10;

  //----------------------------------------------STYLE-DROPDOWN-MARKER--------------------------------------------------------------
  style_dropdown_marker_x = style_dropdown_rect_x;
  style_dropdown_marker_y = style_dropdown_rect_y; 
  style_dropdown_marker_width = style_dropdown_rect_width;
  style_dropdown_marker_height = style_dropdown_rect_height*1/3;

  //----------------------------------------------STYLE-DROPDOWN-PEN--------------------------------------------------------------
  style_dropdown_pen_x = style_dropdown_marker_x;
  style_dropdown_pen_y = style_dropdown_rect_y+style_dropdown_marker_height;
  style_dropdown_pen_width = style_dropdown_rect_width;
  style_dropdown_pen_height = style_dropdown_rect_height*1/3;

  //----------------------------------------------STYLE-DROPDOWN-MARKER--------------------------------------------------------------
  style_dropdown_brush_x = style_dropdown_marker_x;
  style_dropdown_brush_y = style_dropdown_pen_y+style_dropdown_marker_height;
  style_dropdown_brush_width = style_dropdown_rect_width;
  style_dropdown_brush_height = style_dropdown_rect_height*1/3;


  //----------------------------------------------BUTTON-TEXT------------------------------------------------------------
  pencil_but_text = "Pencil";
  eraser_but_text = "Eraser";
  fill_but_text = "Fill";
  style_but_text = "Style";
  brush_but_text = "Brush";
  pen_but_text = "Pen";
  marker_but_text = "Marker";

  //----------------------------------------------TEXT-FONT--------------------------------------------------------------
  but_font  = createFont("Arial", 50);

  //----------------------------------------------COLOURS-----------------------------------------------------------------
  white = #FFFFFF;
  light_blue = #93DDF7;
  grey = #C6C6C6;
  black = #000000;

  //----------------------------------------------------------------------------------------------------------------------
  pencil = true;
  style_dropdown = false;
  style_dropdown_selected = false;
  stroke_weight = 1;
  colour = 0;
}
