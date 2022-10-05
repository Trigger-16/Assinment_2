Table sum_humid_day ; //<>// //<>//
Table sum_humid_night;
Table aut_humid_day;
Table aut_humid_night;
Table win_humid_day;
Table win_humid_night;
Table spr_humid_day;
Table spr_humid_night;

FloatList sumHumidDay;
FloatList sumHumidNight;
FloatList autHumidDay;
FloatList autHumidNight;
FloatList winHumidDay;
FloatList winHumidNight;
FloatList sprHumidDay;
FloatList sprHumidNight;

void createBottomButtons() {
  sumBottomButtons();
  autBottomButtons();
  winBottomButtons();
  sprBottomButtons();

  hideAllButtons();
}

//=== READ HUMIDITY DATA ===
// humidity data will be used to colour the buttons in a 'heat map' fashion
void readHumidity() {
  //== READING AND STORING SUMMER VALUES ==
  sumHumidDay = new FloatList();
  for (int i = 0; i < sum_humid_day.getRowCount(); i++) {
    //println("index: ", i, " value; ", sum_humid_day.getFloat(i, 1));
    sumHumidDay.append(sum_humid_day.getFloat(i, 1));
    //println(sumHumidDay);
  }
  sumHumidNight = new FloatList();
  for (int i = 0; i < sum_humid_night.getRowCount(); i++) {
    //println("index: ", i, " value; ", sum_humid_night.getFloat(i, 1));
    sumHumidNight.append(sum_humid_night.getFloat(i, 1));
    //println(sumHumidNight);
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

  println("Summer day: ", sumHumidDay);//       use: sumHumidDay.get(0) to get SPECIFIC values
  println("Summer night: ", sumHumidNight);
  println("Autumn day: ", autHumidDay);
  println("Autumn night: ", autHumidNight);
  println("Winter day: ", winHumidDay);
  println("Winter night: ", winHumidNight);
  println("Spring day: ", sprHumidDay);
  println("Spring night: ", sprHumidNight);
}

//=== FUNCTION TO AUTO SELECT COLOURS ACC. TO RANGE OF VALUE ===
color setColour(float value) {
  color finalCol;
  color from = color(204, 102, 0); //orange: most dry (i.e. lower no.)
  color to = color(0, 102, 153);   //blue: most humid (i.e. higher no.)
  color interA = lerpColor(from, to, .2);
  color interB = lerpColor(from, to, .4);
  color interC = lerpColor(from, to, .6);
  color interD = lerpColor(from, to, .8);
  if (value < ) {
    finalCol = from;
  } else if (< value <) {
    finalCol = from;
  } else if (< value <) {
    finalCol = from;
  } else if (< value <) {
    finalCol = from;
  } else if (< value <) {
    finalCol = from;
  } else if (< value) {
    finalCol = to;
  }
  return color finalCol;
}


//=== CREATE BUTTONS ===
void sumBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("sum1")
    .setCaptionLabel(" ")
    //.setValue(1)
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("sum12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;
}

void autBottomButtons() {
  int buttonW = width/12;
  int buttonH = height/8;

  cp5.addButton("aut1")
    .setCaptionLabel(" ")
    //.setValue(0)
    .setPosition(0, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("aut12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
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
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("win12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
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
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr2")
    .setCaptionLabel(" ")
    .setPosition(width/12, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr3")
    .setCaptionLabel(" ")
    .setPosition((width/12)*2, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr4")
    .setCaptionLabel(" ")
    .setPosition((width/12)*3, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr5")
    .setCaptionLabel(" ")
    .setPosition((width/12)*4, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr6")
    .setCaptionLabel(" ")
    .setPosition((width/12)*5, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr7")
    .setCaptionLabel(" ")
    .setPosition((width/12)*6, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr8")
    .setCaptionLabel(" ")
    .setPosition((width/12)*7, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr9")
    .setCaptionLabel(" ")
    .setPosition((width/12)*8, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr10")
    .setCaptionLabel(" ")
    .setPosition((width/12)*9, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr11")
    .setCaptionLabel(" ")
    .setPosition((width/12)*10, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
    .setColorForeground(lightBlue)
    .setColorActive(lighterBlue)
    ;

  cp5.addButton("spr12")
    .setCaptionLabel(" ")
    .setPosition((width/12)*11, height-buttonH)
    .setSize(buttonW, buttonH)
    .setColorBackground(deepBlue)
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
