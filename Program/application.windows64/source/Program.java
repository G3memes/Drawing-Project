import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Program extends PApplet {

//Global Variables








//---------------------------------------------CANVAS------------------------------------------------------------
float canvas_x, canvas_y, canvas_height, canvas_width; //Canvas Variables

//---------------------------------------------TOOLBAR------------------------------------------------------------
float toolbar_x, toolbar_y, toolbar_width, toolbar_height; //Toolbar Variables

//---------------------------------------------PENCIL------------------------------------------------------------
float pencil_but_x, pencil_but_y, pencil_but_width, pencil_but_height; //Pencil Button Variables

//---------------------------------------------ERASER------------------------------------------------------------
float eraser_but_x, eraser_but_y; //Eraser Button Variables

//---------------------------------------------FILL------------------------------------------------------------
float fill_but_x, fill_but_y; // Fill Button Variables

//---------------------------------------------STYLE------------------------------------------------------------
float style_but_x, style_but_y; //Style Button Variables
float style_dropdown_rect_x, style_dropdown_rect_y, style_dropdown_rect_width, style_dropdown_rect_height; //Style Dropdown Variables
float style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height; //Style Dropdown Marker Button Vairables
float style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height; //Style Dropdown Pen Button Variables
float style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height; //Style Dropdown Brush Button Variables

//---------------------------------------------SIZE------------------------------------------------------------
float size_but_x, size_but_y; //Size Button Variables
float size_dropdown_rect_x, size_dropdown_rect_y, size_dropdown_rect_width, size_dropdown_rect_height; //Size Dropdown Variables
float size_dropdown_1_x, size_dropdown_1_y, size_dropdown_1_width, size_dropdown_1_height; //Size Dropdown 1 Button Vairables
float size_dropdown_2_x, size_dropdown_2_y, size_dropdown_2_width, size_dropdown_2_height; //Size Dropdown 2 Button Variables
float size_dropdown_3_x, size_dropdown_3_y, size_dropdown_3_width, size_dropdown_3_height; //Size Dropdown 3 Button Variables

//---------------------------------------------SHAPES------------------------------------------------------------
float shapes_but_x, shapes_but_y; //Shapes Button Variables
float shapes_dropdown_rect_x, shapes_dropdown_rect_y, shapes_dropdown_rect_width, shapes_dropdown_rect_height; //Shapes Dropdown Variables
float shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height; //Shapes Dropdown Variables
float shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height; //Shapes Dropdown Variables

//---------------------------------------------EXIT-BUTTON------------------------------------------------------------
float exit_but_x, exit_but_y;

//---------------------------------------------MUSIC-ON/OFF-BUTTON------------------------------------------------------------
float music_but_x, music_but_y;

//---------------------------------------------SAVE-BUTTON------------------------------------------------------------
float save_but_x, save_but_y;
//---------------------------------------------RESET-BUTTON------------------------------------------------------------
float clear_but_x, clear_but_y;

//---------------------------------------------BUTTON_TEXTS------------------------------------------------------------
String pencil_but_text, eraser_but_text, fill_but_text, style_but_text, marker_but_text, pen_but_text, brush_but_text, size_but_text, shapes_but_text, circle_but_text, square_but_text, exit_but_text, music_but_text, music_off_but_text, save_but_text, clear_but_text; //Button Text Variables 

//---------------------------------------------COLOUR-SELECTOR------------------------------------------------------------
float colour_rect_x, colour_rect_y, colour_rect_width, colour_rect_height;
float colour_box_x_1, colour_box_y_1, colour_box_width, colour_box_height;
float colour_box_x_2, colour_box_y_2;
float colour_box_x_3, colour_box_y_3;
float colour_box_x_4, colour_box_y_4;
float colour_box_x_5, colour_box_y_5;
float colour_box_x_6, colour_box_y_6;
float colour_box_x_7, colour_box_y_7;
float colour_box_x_8, colour_box_y_8;
float colour_box_x_9, colour_box_y_9;
float colour_box_x_10, colour_box_y_10;
float colour_box_x_11, colour_box_y_11;
float colour_box_x_12, colour_box_y_12;
float colour_picked_x, colour_picked_y, colour_picked_height;

//---------------------------------------------COLOURS------------------------------------------------------------
int white, light_blue, grey, black, dark_grey; //Colour Variables
int colour; //Resettable Colour Variable
PFont but_font; //Font
int light_yellow, yellow, orange, red, pink, purple, dark_blue, blue, dark_green, green;

//---------------------------------------------BOOLEANS------------------------------------------------------------
boolean clear; //Whether or not user wants to clear the canvas
boolean pencil; //Whether or not user has selected the pencil tool
boolean eraser; //Whether or not user has selected the eraser tool
boolean fill; //Whether or not user has selected the fill tool
boolean style; //Whether or not user has selected the style tool
boolean style_dropdown, style_dropdown_selected; //Whether or not the dropdown list should appear
boolean size_dropdown, size_dropdown_selected;
boolean shapes_dropdown, shapes_dropdown_selected;
boolean marker; //Whether or not user has selected the marker tool
boolean pen; //Whether or not user has selected the pen tool
boolean brush; //Whether or not user has selected the brush tool
boolean line_weight_1;
boolean line_weight_2;
boolean line_weight_3;
boolean circle;
boolean square;
boolean exit;
boolean music_on;
boolean music_off;
boolean save;
int colour_rightnow;
boolean selected_pencil, selected_eraser, selected_fill, selected_marker, selected_pen, selected_brush, selected_size_1, selected_size_2, selected_size_3, selected_circle, selected_square;
float stroke_weight;
float x, y;
int saveP = 1;
PImage saved;
//
float volume_but_x, volume_but_y;
float volume_display_x, volume_display_y, volume_display_width, volume_display_height;
float volume_increase_x, volume_increase_y, volume_width, volume_height;
float volume_decrease_x, volume_decrease_y;
int n;
String volume_text;
String volume;
String volume_but_text;
String volume_plus_text;
String volume_minus_text;

Minim  minim; //creates object to access all functions
AudioPlayer[] song = new AudioPlayer[2]; 

//-------------------------------------------------SETUP---------------------------------------------------------------------
public void setup() {
  
  minim = new Minim(this);
  song[0] = minim.loadFile("Button Click.mp3");
  song[1] = minim.loadFile("Jarico - Summer Time.mp3");
  populating_variables(); //Populates all of the variables
  tool_bar_section(); //Draws all of the buttons in the toolbar
  canvas();
  saved = loadImage("New Save.png");
  if (saved == null) {
    canvas();
  } else {  
    image(saved, canvas_x, canvas_y, canvas_width, canvas_height);
  }
  song[0].setGain(-10);
  song[1].setGain(n);
}

//--------------------------------------------------DRAW--------------------------------------------------------------------
public void draw() {
  song[1].setGain(n);
  volume = n+26+"";
  volume_text = volume;
  tool_bar_section(); //Draws all of the buttons in the toolbar
  volume();
  tool_selected();
  dropdown_selected();
}

//------------------------------------------------------MOUSE-PRESSED----------------------------------------------------------------
public void mousePressed() {
  buttons();
  draw_shape();
}

public void mouseReleased() {
  if (mouseX > volume_decrease_x && mouseX < volume_decrease_x + volume_width && mouseY > volume_decrease_y && mouseY < volume_decrease_y + volume_height) {
    if (n <= 5 && n > -25) {
      n = n - 1;
    }
  }
  if (mouseX > volume_increase_x && mouseX < volume_increase_x + volume_width && mouseY > volume_increase_y && mouseY < volume_increase_y + volume_height) {
    if (n < 5 && n >= -25) {
      n = n + 1;
    }
  }
}
public void buttons() {
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
public void canvas() {
  //---------------------------------------------CANVAS------------------------------------------------------------
  //Draws the Canvas
  noStroke();
  fill(white);
  rect(canvas_x, canvas_y, canvas_width, canvas_height);
  toolbar_button();
}
public void draw_shape() {

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
public void dropdown_selected() {

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
public void populating_variables() {
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
  eraser_but_y = displayHeight*5/60;

  //---------------------------------------------FILL-BUTTON------------------------------------------------------------
  fill_but_x = displayWidth*1/50;
  fill_but_y = displayHeight*9/60;

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
  style_dropdown_pen_y = style_dropdown_rect_y + style_dropdown_marker_height;
  style_dropdown_pen_width = style_dropdown_rect_width;
  style_dropdown_pen_height = style_dropdown_rect_height*1/3;

  //----------------------------------------------STYLE-DROPDOWN-BRUSH--------------------------------------------------------------
  style_dropdown_brush_x = style_dropdown_marker_x;
  style_dropdown_brush_y = style_dropdown_pen_y + style_dropdown_marker_height;
  style_dropdown_brush_width = style_dropdown_rect_width;
  style_dropdown_brush_height = style_dropdown_rect_height*1/3;

  //----------------------------------------------SIZE-BUTTON--------------------------------------------------------------
  size_but_x = displayWidth*11/50;
  size_but_y = displayHeight*1/60;

  //----------------------------------------------SIZE-DROPDOWN-RECTANGLE--------------------------------------------------------------
  size_dropdown_rect_x = size_but_x;
  size_dropdown_rect_y =  displayHeight*3/60;
  size_dropdown_rect_width = displayWidth*1/20;
  size_dropdown_rect_height = displayHeight*1/10;

  //----------------------------------------------SIZE-DROPDOWN-1-BUTTON--------------------------------------------------------------
  size_dropdown_1_x = size_dropdown_rect_x;
  size_dropdown_1_y = size_dropdown_rect_y;
  size_dropdown_1_width = size_dropdown_rect_width;
  size_dropdown_1_height = size_dropdown_rect_height*1/3;

  //----------------------------------------------SIZE-DROPDOWN-2-BUTTON--------------------------------------------------------------
  size_dropdown_2_x = size_but_x;
  size_dropdown_2_y = size_dropdown_rect_y + size_dropdown_1_height;
  size_dropdown_2_width = size_dropdown_rect_width;
  size_dropdown_2_height = size_dropdown_rect_height*1/3;

  //----------------------------------------------SIZE-DROPDOWN-3-BUTTON--------------------------------------------------------------
  size_dropdown_3_x = size_but_x;
  size_dropdown_3_y = size_dropdown_2_y + size_dropdown_2_height;
  size_dropdown_3_width = size_dropdown_rect_width;
  size_dropdown_3_height = size_dropdown_rect_height*1/3;

  //---------------------------------------------SHAPES-BUTTON-----------------------------------------------------------
  shapes_but_x = displayWidth*16/50;
  shapes_but_y = displayHeight*1/60;

  //---------------------------------------------SHAPES-DROPDOWN-RECTANGLE-----------------------------------------------------------
  shapes_dropdown_rect_x = shapes_but_x;
  shapes_dropdown_rect_y = displayHeight*3/60;
  shapes_dropdown_rect_width = displayWidth*1/20;
  shapes_dropdown_rect_height = displayHeight*1/15;

  //---------------------------------------------SHAPES-DROPDOWN-CIRCLE-----------------------------------------------------------  
  shapes_dropdown_circle_x = shapes_but_x;
  shapes_dropdown_circle_y = shapes_dropdown_rect_y;
  shapes_dropdown_circle_width = shapes_dropdown_rect_width;
  shapes_dropdown_circle_height = shapes_dropdown_rect_height*1/2;

  //---------------------------------------------SHAPES-DROPDOWN-SQUARE-----------------------------------------------------------
  shapes_dropdown_square_x = shapes_but_x;
  shapes_dropdown_square_y = shapes_dropdown_circle_y + shapes_dropdown_circle_height;
  shapes_dropdown_square_width = shapes_dropdown_rect_width;
  shapes_dropdown_square_height = shapes_dropdown_rect_height*1/2;


  //---------------------------------------------COLOUR-SELECTOR------------------------------------------------------------
  colour_rect_x = displayWidth*21/50;
  colour_rect_y = displayHeight*4/60;
  colour_rect_width = displayWidth*4/16;
  colour_rect_height = displayHeight*1/8;

  colour_picked_x =  colour_rect_x;
  colour_picked_y = displayHeight*1/60;
  colour_picked_height = displayHeight*1/20;

  colour_box_x_1 = colour_rect_x+(displayWidth*1/70);
  colour_box_y_1 = colour_rect_y+(displayHeight*1/60);
  colour_box_width = colour_rect_width*1/10;
  colour_box_height = colour_rect_height*1/4; 

  colour_box_x_2 = colour_box_x_1+colour_box_width+(displayWidth*1/70);
  colour_box_y_2 = colour_box_y_1;

  colour_box_x_3 = colour_box_x_2+colour_box_width+(displayWidth*1/70);
  colour_box_y_3 = colour_box_y_1;

  colour_box_x_4 = colour_box_x_3+colour_box_width+(displayWidth*1/70);
  colour_box_y_4 = colour_box_y_1;

  colour_box_x_5 =  colour_box_x_4+colour_box_width+(displayWidth*1/70);
  colour_box_y_5 = colour_box_y_1;

  colour_box_x_6 = colour_box_x_5+colour_box_width+(displayWidth*1/70);
  colour_box_y_6 = colour_box_y_1;

  colour_box_x_7 = colour_box_x_1;
  colour_box_y_7 = colour_box_y_1+colour_box_height*2;

  colour_box_x_8 = colour_box_x_2;
  colour_box_y_8 = colour_box_y_1+colour_box_height*2;

  colour_box_x_9 = colour_box_x_3;
  colour_box_y_9 = colour_box_y_1+colour_box_height*2;

  colour_box_x_10 = colour_box_x_4;
  colour_box_y_10 = colour_box_y_1+colour_box_height*2;

  colour_box_x_11 = colour_box_x_5;
  colour_box_y_11 = colour_box_y_1+colour_box_height*2;

  colour_box_x_12 = colour_box_x_6;
  colour_box_y_12 = colour_box_y_1+colour_box_height*2;

  //---------------------------------------------EXIT-BUTTON------------------------------------------------------------
  exit_but_x = displayWidth*46/50;
  exit_but_y = displayHeight*1/60;

  //---------------------------------------------MUSIC-ON/OFF-BUTTON------------------------------------------------------------
  music_but_x = displayWidth*46/50;
  music_but_y = displayHeight*4/60;

  //---------------------------------------------SAVE-BUTTON------------------------------------------------------------
  save_but_x = displayWidth*46/50;
  save_but_y = displayHeight*7/60;

  //---------------------------------------------RESET-BUTTON------------------------------------------------------------
  clear_but_x = displayWidth*46/50;
  clear_but_y = displayHeight*10/60;

  //---------------------------------------------VOLUME-DISPLAY------------------------------------------------------------
  volume_display_x = displayWidth*38/50;
  volume_display_y = displayHeight*6/60;
  volume_display_width = displayWidth*1/15;
  volume_display_height = displayHeight*1/30;

  //---------------------------------------------VOLUME-BUTTON------------------------------------------------------------
  volume_but_x = (displayWidth*38/50)+(displayWidth*1/130);
  volume_but_y = displayHeight*1/60;

  //---------------------------------------------VOLUME-INCREASE-BUTTON------------------------------------------------------------
  volume_increase_x = displayWidth*36/50;
  volume_increase_y = displayHeight*6/60;
  volume_width = displayWidth*1/30;
  volume_height = displayHeight*1/30;

  //---------------------------------------------VOLUME-DECREASE-BUTTON------------------------------------------------------------
  volume_decrease_x = displayWidth*667/800;
  volume_decrease_y = displayHeight*6/60;

  //----------------------------------------------BUTTON-TEXT------------------------------------------------------------
  pencil_but_text = "Pencil";
  eraser_but_text = "Eraser";
  fill_but_text = "Fill";
  style_but_text = "More Tools";
  brush_but_text = "Brush";
  pen_but_text = "Colour Pen";
  marker_but_text = "Marker";
  size_but_text = "Size";
  shapes_but_text = "Shapes";
  circle_but_text = "Circle";
  square_but_text = "Square";
  exit_but_text = "Exit";
  music_but_text = "Music Off";
  music_off_but_text = "Music On";
  save_but_text = "Save (for next time)";
  clear_but_text = "Clear";
  volume_but_text = "Volume";
  volume_plus_text = "+";
  volume_minus_text = "-";

  //----------------------------------------------TEXT-FONT--------------------------------------------------------------
  but_font  = createFont("Arial", 50);

  //----------------------------------------------COLOURS-----------------------------------------------------------------
  white = 0xffFFFFFF;
  dark_grey = 0xff7C7C7C;
  light_blue = 0xff93DDF7;
  grey = 0xffC6C6C6;
  black = 0xff000000;
  light_yellow = 0xffFFF700;
  yellow = 0xffFFC800;
  orange = 0xffFF9900;
  red = 0xffFF0000;
  pink = 0xffFF9BC5;
  purple = 0xffC700FF;
  dark_blue = 0xff000EFF;
  blue = 0xff00BDFF;
  dark_green = 0xff005F07;
  green = 0xff00FF12;

  //----------------------------------------------------------------------------------------------------------------------
  pencil = true;
  eraser = false;
  fill = false;
  marker = false;
  pen = false;
  brush = false;
  circle = false;
  square = false;
  style_dropdown = false;
  style_dropdown_selected = false;
  shapes_dropdown = false;
  size_dropdown_selected = false;
  selected_pencil = true;
  selected_eraser = false;
  selected_fill = false;
  selected_marker = false;
  selected_pen = false;
  selected_brush = false;
  selected_size_1 = true;
  selected_size_2 = false;
  selected_size_3 = false;
  selected_circle = false;
  selected_square = false;
  stroke_weight = 1;
  colour = 0;
  n = 0;
}
public void shapes_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(shapes_dropdown_rect_x, shapes_dropdown_rect_y, shapes_dropdown_rect_width, shapes_dropdown_rect_height);
  strokeWeight(1);

  //---------------------------------------------DROPDOWN-CIRCLE------------------------------------------------------------
  if (selected_circle == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(circle_but_text, shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
  }
  if (selected_circle == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(circle_but_text, shapes_dropdown_circle_x, shapes_dropdown_circle_y, shapes_dropdown_circle_width, shapes_dropdown_circle_height);
  }

  //---------------------------------------------DROPDOWN-SQUARE------------------------------------------------------------
  if (selected_square == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(square_but_text, shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
  }
  if (selected_square == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(square_but_text, shapes_dropdown_square_x, shapes_dropdown_square_y, shapes_dropdown_square_width, shapes_dropdown_square_height);
  }
}
public void size_dropdown() {
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
public void style_dropdown() {
  //---------------------------------------------DROPDOWN-RECTANGLE------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(style_dropdown_rect_x, style_dropdown_rect_y, style_dropdown_rect_width, style_dropdown_rect_height);

  //---------------------------------------------DROPDOWN-MARKER------------------------------------------------------------
  if (selected_marker == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(marker_but_text, style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
  }
  if (selected_marker == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(marker_but_text, style_dropdown_marker_x, style_dropdown_marker_y, style_dropdown_marker_width, style_dropdown_marker_height);
  }

  //---------------------------------------------DROPDOWN-PEN------------------------------------------------------------
  if (selected_pen == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pen_but_text, style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
  }
  if (selected_pen == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(pen_but_text, style_dropdown_pen_x, style_dropdown_pen_y, style_dropdown_pen_width, style_dropdown_pen_height);
  }

  //---------------------------------------------DROPDOWN-BRUSH------------------------------------------------------------
  if (selected_brush == false) {
    stroke(0);
    strokeWeight(1);
    fill(grey);
    rect(style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(brush_but_text, style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
  }
  if (selected_brush == true) {
    stroke(0);
    strokeWeight(1);
    fill(white);
    rect(style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
    fill(black);
    textFont(but_font, displayWidth*1/132);
    textAlign(CENTER, CENTER);
    text(brush_but_text, style_dropdown_brush_x, style_dropdown_brush_y, style_dropdown_brush_width, style_dropdown_brush_height);
  }
}
public void tool_selected() {

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
      if (mouseX > canvas_x && mouseX < canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        stroke(colour);
        ;
        strokeWeight(25);
        smooth();
        line(mouseX, mouseY, pmouseX, pmouseY);
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
      if (mouseX > canvas_x && mouseX <  canvas_x + canvas_width && mouseY > canvas_y+5 && mouseY < canvas_y + canvas_height && pmouseX > canvas_x && pmouseX <  canvas_x + canvas_width && pmouseY > canvas_y+5 && pmouseY < canvas_y + canvas_height) {
        fill(colour);
        noStroke();
        circle(pmouseX, pmouseY, stroke_weight+displayWidth*1/198);
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
public void volume() {
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
public void tool_bar_section() {
  //---------------------------------------------TOOLBAR------------------------------------------------------------
  //Draws the toolbar
  strokeWeight(1);
  fill(light_blue);
  rect(toolbar_x, toolbar_y, toolbar_width, toolbar_height);
  toolbar_button(); //Draws the buttons
}
public void toolbar_button() {
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
  textFont(but_font, displayWidth*1/200);
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

  //---------------------------------------------VOLUME-BUTTON------------------------------------------------------------
  stroke(0);
  strokeWeight(1);
  fill(grey);
  rect(volume_but_x, volume_but_y, pencil_but_width, pencil_but_height);
  fill(black);
  textFont(but_font, displayWidth*1/132);
  textAlign(CENTER, CENTER);
  text(volume_but_text, volume_but_x, volume_but_y, pencil_but_width, pencil_but_height);
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "Program" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
