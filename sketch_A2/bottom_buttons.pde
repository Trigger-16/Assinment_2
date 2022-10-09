//Tables //<>//
Table sum_humid_day; //<>//
Table sum_humid_night;
Table aut_humid_day;
Table aut_humid_night;
Table win_humid_day;
Table win_humid_night;
Table spr_humid_day;
Table spr_humid_night;

//FloatLists of humidity values
FloatList sumHumidDay;
FloatList sumHumidNight;
FloatList autHumidDay;
FloatList autHumidNight;
FloatList winHumidDay;
FloatList winHumidNight;
FloatList sprHumidDay;
FloatList sprHumidNight;

//Summer Button Colours
color col_s1;
color col_s2;
color col_s3;
color col_s4;
color col_s5;
color col_s6;
color col_s7;
color col_s8;
color col_s9;
color col_s10;
color col_s11;
color col_s12;
//Autumn Button Colours
color col_a1;
color col_a2;
color col_a3;
color col_a4;
color col_a5;
color col_a6;
color col_a7;
color col_a8;
color col_a9;
color col_a10;
color col_a11;
color col_a12;
//Winter Button Colours
color col_w1;
color col_w2;
color col_w3;
color col_w4;
color col_w5;
color col_w6;
color col_w7;
color col_w8;
color col_w9;
color col_w10;
color col_w11;
color col_w12;
//Spring Button Colours
color col_sp1;
color col_sp2;
color col_sp3;
color col_sp4;
color col_sp5;
color col_sp6;
color col_sp7;
color col_sp8;
color col_sp9;
color col_sp10;
color col_sp11;
color col_sp12;

//=== READ HUMIDITY DATA === humidity data will be used to colour the buttons in a 'heat map' fashion
void readHumidity() {
  //== READING AND STORING SUMMER VALUES ==
  sumHumidDay = new FloatList();
  for (int i = 0; i < sum_humid_day.getRowCount(); i++) {
    sumHumidDay.append(sum_humid_day.getFloat(i, 1));
  }
  sumHumidNight = new FloatList();
  for (int i = 0; i < sum_humid_night.getRowCount(); i++) {
    sumHumidNight.append(sum_humid_night.getFloat(i, 1));
  }

  //== READING AND STORING AUTUMN VALUES ==
  autHumidDay = new FloatList();
  for (int i = 0; i < aut_humid_day.getRowCount(); i++) {
    autHumidDay.append(aut_humid_day.getFloat(i, 1));
  }
  autHumidNight = new FloatList();
  for (int i = 0; i < aut_humid_night.getRowCount(); i++) {
    autHumidNight.append(aut_humid_night.getFloat(i, 1));
  }

  //== READING AND STORING WINTER VALUES ==
  winHumidDay = new FloatList();
  for (int i = 0; i < win_humid_day.getRowCount(); i++) {
    winHumidDay.append(win_humid_day.getFloat(i, 1));
  }
  winHumidNight = new FloatList();
  for (int i = 0; i < win_humid_night.getRowCount(); i++) {
    winHumidNight.append(win_humid_night.getFloat(i, 1));
  }

  //== READING AND STORING SPRING VALUES ==
  sprHumidDay = new FloatList();
  for (int i = 0; i < spr_humid_day.getRowCount(); i++) {
    sprHumidDay.append(spr_humid_day.getFloat(i, 1));
  }
  sprHumidNight = new FloatList();
  for (int i = 0; i < spr_humid_night.getRowCount(); i++) {
    sprHumidNight.append(spr_humid_night.getFloat(i, 1));
  }
}

//=== CREATE BUTTONS ===
void sumBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("sum1")
    .setCaptionLabel(" ")
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s1)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s2)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s3)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s4)
    .setColorForeground(lightPeach)
    .setColorActive(lighterPeach)
    //.setColorBackground(deepBlue)
    //.setColorForeground(lightBlue)
    //.setColorActive(lighterBlue)
    ;

  cp5.addButton("sum5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s5)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s6)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s7)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s8)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s9)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s10)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_s11)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW+15, buttonH)
    .setColorBackground(col_s12)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;
}

void autBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("aut1")
    .setCaptionLabel(" ")
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a1)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a2)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a3)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a4)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a5)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a6)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a7)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a8)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a9)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a10)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_a11)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW+15, buttonH)
    .setColorBackground(col_a12)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;
}

void winBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("win1")
    .setCaptionLabel(" ")
    //.setValue(0)
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w1)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w2)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w3)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w4)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w5)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w6)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w7)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w8)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w9)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w10)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_w11)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW+15, buttonH)
    .setColorBackground(col_w12)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;
}

void sprBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("spr1")
    .setCaptionLabel(" ")
    //.setValue(0)
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp1)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp2)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp3)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp4)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp5)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp6)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp7)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp8)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp9)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp10)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(col_sp11)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW+15, buttonH)
    .setColorBackground(col_sp12)
    //.setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;
}
//=== END CREATE BUTTONS ===

//=== FUNCTIONS TO TOGGLE ON/OFF BUTTONS FOR EACH TAB ===
void hideAllButtons() {
  hideSumButtons();
  hideAutButtons();
  hideWinButtons();
  hideSprButtons();
}

void showSumBut() {
  hideAllButtons();
  showSumButtons();
}

void showAutBut() {
  hideAllButtons();
  showAutButtons();
}

void showWinBut() {
  hideAllButtons();
  showWinButtons();
}

void showSprBut() {
  hideAllButtons();
  showSprButtons();
}

//=== HIDE BUTTONS ===
void hideSumButtons() {
  cp5.getController("sum1").hide();
  cp5.getController("sum2").hide();
  cp5.getController("sum3").hide();
  cp5.getController("sum4").hide();
  cp5.getController("sum5").hide();
  cp5.getController("sum6").hide();
  cp5.getController("sum7").hide();
  cp5.getController("sum8").hide();
  cp5.getController("sum9").hide();
  cp5.getController("sum10").hide();
  cp5.getController("sum11").hide();
  cp5.getController("sum12").hide();
}
void hideAutButtons() {
  cp5.getController("aut1").hide();
  cp5.getController("aut2").hide();
  cp5.getController("aut3").hide();
  cp5.getController("aut4").hide();
  cp5.getController("aut5").hide();
  cp5.getController("aut6").hide();
  cp5.getController("aut7").hide();
  cp5.getController("aut8").hide();
  cp5.getController("aut9").hide();
  cp5.getController("aut10").hide();
  cp5.getController("aut11").hide();
  cp5.getController("aut12").hide();
}
void hideWinButtons() {
  cp5.getController("win1").hide();
  cp5.getController("win2").hide();
  cp5.getController("win3").hide();
  cp5.getController("win4").hide();
  cp5.getController("win5").hide();
  cp5.getController("win6").hide();
  cp5.getController("win7").hide();
  cp5.getController("win8").hide();
  cp5.getController("win9").hide();
  cp5.getController("win10").hide();
  cp5.getController("win11").hide();
  cp5.getController("win12").hide();
}
void hideSprButtons() {
  cp5.getController("spr1").hide();
  cp5.getController("spr2").hide();
  cp5.getController("spr3").hide();
  cp5.getController("spr4").hide();
  cp5.getController("spr5").hide();
  cp5.getController("spr6").hide();
  cp5.getController("spr7").hide();
  cp5.getController("spr8").hide();
  cp5.getController("spr9").hide();
  cp5.getController("spr10").hide();
  cp5.getController("spr11").hide();
  cp5.getController("spr12").hide();
}
//=== END HIDE BUTTONS ===
//=== SHOW BUTTONS ===
void showSumButtons() {
  cp5.getController("sum1").show();
  cp5.getController("sum2").show();
  cp5.getController("sum3").show();
  cp5.getController("sum4").show();
  cp5.getController("sum5").show();
  cp5.getController("sum6").show();
  cp5.getController("sum7").show();
  cp5.getController("sum8").show();
  cp5.getController("sum9").show();
  cp5.getController("sum10").show();
  cp5.getController("sum11").show();
  cp5.getController("sum12").show();
}
void showAutButtons() {
  cp5.getController("aut1").show();
  cp5.getController("aut2").show();
  cp5.getController("aut3").show();
  cp5.getController("aut4").show();
  cp5.getController("aut5").show();
  cp5.getController("aut6").show();
  cp5.getController("aut7").show();
  cp5.getController("aut8").show();
  cp5.getController("aut9").show();
  cp5.getController("aut10").show();
  cp5.getController("aut11").show();
  cp5.getController("aut12").show();
}
void showWinButtons() {
  cp5.getController("win1").show();
  cp5.getController("win2").show();
  cp5.getController("win3").show();
  cp5.getController("win4").show();
  cp5.getController("win5").show();
  cp5.getController("win6").show();
  cp5.getController("win7").show();
  cp5.getController("win8").show();
  cp5.getController("win9").show();
  cp5.getController("win10").show();
  cp5.getController("win11").show();
  cp5.getController("win12").show();
}
void showSprButtons() {
  cp5.getController("spr1").show();
  cp5.getController("spr2").show();
  cp5.getController("spr3").show();
  cp5.getController("spr4").show();
  cp5.getController("spr5").show();
  cp5.getController("spr6").show();
  cp5.getController("spr7").show();
  cp5.getController("spr8").show();
  cp5.getController("spr9").show();
  cp5.getController("spr10").show();
  cp5.getController("spr11").show();
  cp5.getController("spr12").show();
}
//=== END SHOW BUTTONS ===

void createBottomButtons() {
  sumBottomButtons();
  autBottomButtons();
  winBottomButtons();
  sprBottomButtons();

  hideAllButtons();
}


//FUNCTIONS FOR HEAT MAP/BUTTON COLOURS
//=== FUNCTION TO AUTO SELECT COLOURS ACC. TO RANGE OF VALUE ===
color setColour(float value) {
  //'Heatmap' Colours
  color c1 = #ff0000;
  color c2 = #ffc400;
  color c3 = #dae023;
  color c4 = #98d03d;
  color c5 = #56d739;
  color c6 = #10df66;
  color c7 = #0ad5a3;
  color c8 = #00c6ff;

  color finalCol = color(0, 0, 0);
  if (value < 60) {
    finalCol = c1; //from;
  } else if (60 < value && value < 65.5) {
    finalCol = c2;
  } else if (65.5 < value && value < 70) {
    finalCol = c3;
  } else if (70 < value && value < 72) {
    finalCol = c4;
  } else if (72 < value && value < 75.5) {
    finalCol = c5;
  } else if (75.5 < value && value < 80) {
    finalCol = c6;
  } else if (80 < value && value < 85) {
    finalCol = c7;
  } else if (value > 85) {
    finalCol = c8; //to;
  }
  return finalCol;
}

//=== DAY / NIGHT COLOURS ===
//SUMMER
void sumDayCols() {
  col_s1 = setColour(sumHumidDay.get(0));
  col_s2 = setColour(sumHumidDay.get(1));
  col_s3 = setColour(sumHumidDay.get(2));
  col_s4 = setColour(sumHumidDay.get(3));
  col_s5 = setColour(sumHumidDay.get(4));
  col_s6 = setColour(sumHumidDay.get(5));
  col_s7 = setColour(sumHumidDay.get(6));
  col_s8 = setColour(sumHumidDay.get(7));
  col_s9 = setColour(sumHumidDay.get(8));
  col_s10 = setColour(sumHumidDay.get(9));
  col_s11 = setColour(sumHumidDay.get(10));
  col_s12 = setColour(sumHumidDay.get(11));
}
void sumNightCols() {
  col_s1 = setColour(sumHumidNight.get(0));
  col_s2 = setColour(sumHumidNight.get(1));
  col_s3 = setColour(sumHumidNight.get(2));
  col_s4 = setColour(sumHumidNight.get(3));
  col_s5 = setColour(sumHumidNight.get(4));
  col_s6 = setColour(sumHumidNight.get(5));
  col_s7 = setColour(sumHumidNight.get(6));
  col_s8 = setColour(sumHumidNight.get(7));
  col_s9 = setColour(sumHumidNight.get(8));
  col_s10 = setColour(sumHumidNight.get(9));
  col_s11 = setColour(sumHumidNight.get(10));
  col_s12 = setColour(sumHumidNight.get(11));
}
//AUTUMN
void autDayCols() {
  col_a1 = setColour(autHumidDay.get(0));
  col_a2 = setColour(autHumidDay.get(1));
  col_a3 = setColour(autHumidDay.get(2));
  col_a4 = setColour(autHumidDay.get(3));
  col_a5 = setColour(autHumidDay.get(4));
  col_a6 = setColour(autHumidDay.get(5));
  col_a7 = setColour(autHumidDay.get(6));
  col_a8 = setColour(autHumidDay.get(7));
  col_a9 = setColour(autHumidDay.get(8));
  col_a10 = setColour(autHumidDay.get(9));
  col_a11 = setColour(autHumidDay.get(10));
  col_a12 = setColour(autHumidDay.get(11));
}
void autNightCols() {
  col_a1 = setColour(autHumidNight.get(0));
  col_a2 = setColour(autHumidNight.get(1));
  col_a3 = setColour(autHumidNight.get(2));
  col_a4 = setColour(autHumidNight.get(3));
  col_a5 = setColour(autHumidNight.get(4));
  col_a6 = setColour(autHumidNight.get(5));
  col_a7 = setColour(autHumidNight.get(6));
  col_a8 = setColour(autHumidNight.get(7));
  col_a9 = setColour(autHumidNight.get(8));
  col_a10 = setColour(autHumidNight.get(9));
  col_a11 = setColour(autHumidNight.get(10));
  col_a12 = setColour(autHumidNight.get(11));
}
//WINTER
void winDayCols() {
  col_w1 = setColour(winHumidDay.get(0));
  col_w2 = setColour(winHumidDay.get(1));
  col_w3 = setColour(winHumidDay.get(2));
  col_w4 = setColour(winHumidDay.get(3));
  col_w5 = setColour(winHumidDay.get(4));
  col_w6 = setColour(winHumidDay.get(5));
  col_w7 = setColour(winHumidDay.get(6));
  col_w8 = setColour(winHumidDay.get(7));
  col_w9 = setColour(winHumidDay.get(8));
  col_w10 = setColour(winHumidDay.get(9));
  col_w11 = setColour(winHumidDay.get(10));
  col_w12 = setColour(winHumidDay.get(11));
}
void winNightCols() {
  col_w1 = setColour(winHumidNight.get(0));
  col_w2 = setColour(winHumidNight.get(1));
  col_w3 = setColour(winHumidNight.get(2));
  col_w4 = setColour(winHumidNight.get(3));
  col_w5 = setColour(winHumidNight.get(4));
  col_w6 = setColour(winHumidNight.get(5));
  col_w7 = setColour(winHumidNight.get(6));
  col_w8 = setColour(winHumidNight.get(7));
  col_w9 = setColour(winHumidNight.get(8));
  col_w10 = setColour(winHumidNight.get(9));
  col_w11 = setColour(winHumidNight.get(10));
  col_w12 = setColour(winHumidNight.get(11));
}
//SPRING
void sprDayCols() {
  col_sp1 = setColour(sprHumidDay.get(0));
  col_sp2 = setColour(sprHumidDay.get(1));
  col_sp3 = setColour(sprHumidDay.get(2));
  col_sp4 = setColour(sprHumidDay.get(3));
  col_sp5 = setColour(sprHumidDay.get(4));
  col_sp6 = setColour(sprHumidDay.get(5));
  col_sp7 = setColour(sprHumidDay.get(6));
  col_sp8 = setColour(sprHumidDay.get(7));
  col_sp9 = setColour(sprHumidDay.get(8));
  col_sp10 = setColour(sprHumidDay.get(9));
  col_sp11 = setColour(sprHumidDay.get(10));
  col_sp12 = setColour(sprHumidDay.get(11));
}
void sprNightCols() {
  col_sp1 = setColour(sprHumidNight.get(0));
  col_sp2 = setColour(sprHumidNight.get(1));
  col_sp3 = setColour(sprHumidNight.get(2));
  col_sp4 = setColour(sprHumidNight.get(3));
  col_sp5 = setColour(sprHumidNight.get(4));
  col_sp6 = setColour(sprHumidNight.get(5));
  col_sp7 = setColour(sprHumidNight.get(6));
  col_sp8 = setColour(sprHumidNight.get(7));
  col_sp9 = setColour(sprHumidNight.get(8));
  col_sp10 = setColour(sprHumidNight.get(9));
  col_sp11 = setColour(sprHumidNight.get(10));
  col_sp12 = setColour(sprHumidNight.get(11));
}
//===END DAY / NIGHT COLOURS ===

void setButCols() {
  //FUNCTION TO SET ALL COLOURS OF BUTTNS
  //Summer
  cp5.get(Button.class, "sum1").setColorBackground(col_s1);
  cp5.get(Button.class, "sum2").setColorBackground(col_s2);
  cp5.get(Button.class, "sum3").setColorBackground(col_s3);
  cp5.get(Button.class, "sum4").setColorBackground(col_s4);
  cp5.get(Button.class, "sum5").setColorBackground(col_s5);
  cp5.get(Button.class, "sum6").setColorBackground(col_s6);
  cp5.get(Button.class, "sum7").setColorBackground(col_s7);
  cp5.get(Button.class, "sum8").setColorBackground(col_s8);
  cp5.get(Button.class, "sum9").setColorBackground(col_s9);
  cp5.get(Button.class, "sum10").setColorBackground(col_s10);
  cp5.get(Button.class, "sum11").setColorBackground(col_s11);
  cp5.get(Button.class, "sum12").setColorBackground(col_s12);
  //Autumn
  cp5.get(Button.class, "aut1").setColorBackground(col_a1);
  cp5.get(Button.class, "aut2").setColorBackground(col_a2);
  cp5.get(Button.class, "aut3").setColorBackground(col_a3);
  cp5.get(Button.class, "aut4").setColorBackground(col_a4);
  cp5.get(Button.class, "aut5").setColorBackground(col_a5);
  cp5.get(Button.class, "aut6").setColorBackground(col_a6);
  cp5.get(Button.class, "aut7").setColorBackground(col_a7);
  cp5.get(Button.class, "aut8").setColorBackground(col_a8);
  cp5.get(Button.class, "aut9").setColorBackground(col_a9);
  cp5.get(Button.class, "aut10").setColorBackground(col_a10);
  cp5.get(Button.class, "aut11").setColorBackground(col_a11);
  cp5.get(Button.class, "aut12").setColorBackground(col_a12);
  //Winter
  cp5.get(Button.class, "win1").setColorBackground(col_w1);
  cp5.get(Button.class, "win2").setColorBackground(col_w2);
  cp5.get(Button.class, "win3").setColorBackground(col_w3);
  cp5.get(Button.class, "win4").setColorBackground(col_w4);
  cp5.get(Button.class, "win5").setColorBackground(col_w5);
  cp5.get(Button.class, "win6").setColorBackground(col_w6);
  cp5.get(Button.class, "win7").setColorBackground(col_w7);
  cp5.get(Button.class, "win8").setColorBackground(col_w8);
  cp5.get(Button.class, "win9").setColorBackground(col_w9);
  cp5.get(Button.class, "win10").setColorBackground(col_w10);
  cp5.get(Button.class, "win11").setColorBackground(col_w11);
  cp5.get(Button.class, "win12").setColorBackground(col_w12);
  //Spring
  cp5.get(Button.class, "spr1").setColorBackground(col_sp1);
  cp5.get(Button.class, "spr2").setColorBackground(col_sp2);
  cp5.get(Button.class, "spr3").setColorBackground(col_sp3);
  cp5.get(Button.class, "spr4").setColorBackground(col_sp4);
  cp5.get(Button.class, "spr5").setColorBackground(col_sp5);
  cp5.get(Button.class, "spr6").setColorBackground(col_sp6);
  cp5.get(Button.class, "spr7").setColorBackground(col_sp7);
  cp5.get(Button.class, "spr8").setColorBackground(col_sp8);
  cp5.get(Button.class, "spr9").setColorBackground(col_sp9);
  cp5.get(Button.class, "spr10").setColorBackground(col_sp10);
  cp5.get(Button.class, "spr11").setColorBackground(col_sp11);
  cp5.get(Button.class, "spr12").setColorBackground(col_sp12);
}
