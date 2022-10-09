//Tables
Table win_temp_day;
Table win_temp_night;

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
// == day data ==
void readWinDayTemp() {
  if (index < win_temp_day.getRowCount()) {
    println("day temp data point: ", index, " | ", win_temp_day.getFloat(index, 1));
    index++;
  }
}

void drawWinDayTemp() {
  fill(255);
  for (int i = 0; i < win_temp_day.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = win_temp_day.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
// == night data ==
void readWinNightTemp() {
  if (index < win_temp_night.getRowCount()) {
    println("night temp data point: ", index, " | ", win_temp_night.getFloat(index, 1));
    index++;
  }
}
void drawWinNightTemp() {
  fill(0);
  for (int i = 0; i < win_temp_night.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = win_temp_night.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
//=== END AIR TEMPERATURE ===
