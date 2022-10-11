//Tables
Table win_temp_day;
Table win_temp_night;
//FloatList
FloatList winTempDay; 
FloatList winTempNight;
//Values for mapping temperature data
float winDayTempMin, winDayTempMax; 
float winNightTempMin, winNightTempMax; 


void winter() {
  //readWinSolarxy();

  if (is_night == true  && is_winter == true) {
    drawWinNightTemp();
  } else if (is_day == true && is_winter == true) {
    drawWinDayTemp();
  }
}

void readWinSolarxy() {
  if (index < win_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", win_solar_xy.getFloat(index, 1));
    index++;
  }
}

//=== AIR TEMPERATURE ===
void readWinTemp() {
  //Day data
  winTempDay = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < win_temp_day.getRowCount(); i++) {
    float value =  win_temp_day.getFloat(i, 1);
    winTempDay.append(value);
  }
  winDayTempMin = winTempDay.min();
  winDayTempMax = winTempDay.max();
  println("win day temp min: ", winDayTempMin);
  println("win day temp max: ", winDayTempMax);

  //Night data
  winTempNight = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < win_temp_night.getRowCount(); i++) {
    float value =  win_temp_night.getFloat(i, 1);
    winTempNight.append(value);
  }
  winNightTempMin = winTempNight.min();
  winNightTempMax = winTempNight.max();
  println("win night temp min: ", winNightTempMin);
  println("win night temp max: ", winNightTempMax);
}
// == day data ==
void drawWinDayTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(winDayTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(winDayTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < winTempDay.size(); i++) {
    float value = winTempDay.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    circleX = offset/2 + (i*offset);
    float mappedY = map(value, winDayTempMin, winDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);
    
    playSound(circleX, circleRadius);
  }
}
// == night data ==
void drawWinNightTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(winNightTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(winNightTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < winTempNight.size(); i++) {
    float value = winTempNight.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    float circleX = offset/2 + (i*offset);
    float mappedY = map(value, winNightTempMin, winNightTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);
    
    playSound(circleX, circleRadius);
  }
}
//=== END AIR TEMPERATURE ===
