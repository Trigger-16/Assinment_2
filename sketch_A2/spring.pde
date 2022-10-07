//Tables
Table spr_temp_day;
Table spr_temp_night;

void spring() {
  //readSprSolarxy();
  if (is_night == true  && is_spring == true) {
    drawSprNightTemp();
  } else if (is_day == true && is_spring == true) {
    drawSprDayTemp();
  }
}

void readSprSolarxy() {
  if (index < spr_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", spr_solar_xy.getFloat(index, 1));
    index++;
  }
}

//=== AIR TEMPERATURE ===
// == day data ==
void readSprDayTemp() {
  if (index < spr_temp_day.getRowCount()) {
    println("day temp data point: ", index, " | ", spr_temp_day.getFloat(index, 1));
    index++;
  }
}

void drawSprDayTemp() {
  fill(255);
  for (int i = 0; i < spr_temp_day.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = spr_temp_day.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
// == night data ==
void readSprNightTemp() {
  if (index < spr_temp_night.getRowCount()) {
    println("night temp data point: ", index, " | ", spr_temp_night.getFloat(index, 1));
    index++;
  }
}
void drawSprNightTemp() {
  fill(0);
  for (int i = 0; i < spr_temp_night.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = spr_temp_night.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
//=== END AIR TEMPERATURE ===
