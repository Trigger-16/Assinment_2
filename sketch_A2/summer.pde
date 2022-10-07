//Tables
Table sum_temp_day;
Table sum_temp_night;

void summer() {
  //readSumSolarxy();
  if (is_night == true  && is_summer == true) {
    drawSumNightTemp();
  } else if (is_day == true && is_summer == true) {
    drawSumDayTemp();
  }
}

//=== SOLAR RADIATION ===
void readSumSolarxy() {
  if (index < sum_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("solar data point: ", index, " | ", sum_solar_xy.getFloat(index, 1));
    index++;
  }
}
//=== END SOLAR RADIATION ===

//=== AIR TEMPERATURE ===
// == day data ==
void readSumDayTemp() {
  if (index < sum_temp_day.getRowCount()) {
    println("day temp data point: ", index, " | ", sum_temp_day.getFloat(index, 1));
    index++;
  }
}

void drawSumDayTemp() {
  fill(255);
  for (int i = 0; i < sum_temp_day.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = sum_temp_day.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    //float mapped = map(circleRadius, 0, 30, 0, soundRectH/3);
    //circle(50+(offset*i)+(i*95), soundRectCY+50+(offset*circleRadius), mapped);
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
// == night data ==
void readSumNightTemp() {
  if (index < sum_temp_night.getRowCount()) {
    println("night temp data point: ", index, " | ", sum_temp_night.getFloat(index, 1));
    index++;
  }
}
void drawSumNightTemp() {
  fill(0);
  for (int i = 0; i < sum_temp_night.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = sum_temp_night.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;//sum_temp_night.getFloat(i, 1);
    //float mapped = map(circleRadius, 0, 30, 0, soundRectH/3);
    //circle(50+(offset*i)+(i*95), soundRectCY+50+(offset*circleRadius), mapped);
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
//=== END AIR TEMPERATURE ===
