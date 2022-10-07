//Tables
Table aut_temp_day;
Table aut_temp_night;

void autumn() {
 // readAutSolarxy();

  if (is_night == true  && is_autumn == true) {
    drawAutNightTemp();
  } else if (is_day == true && is_autumn == true) {
    drawAutDayTemp();
  }
}

void readAutSolarxy() {
  if (index < aut_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", aut_solar_xy.getFloat(index, 1));
    index++;
  }
}

//=== AIR TEMPERATURE ===
// == day data ==
void readAutDayTemp() {
  if (index < aut_temp_day.getRowCount()) {
    println("day temp data point: ", index, " | ", aut_temp_day.getFloat(index, 1));
    index++;
  }
}

void drawAutDayTemp() {
  fill(255);
  for (int i = 0; i < aut_temp_day.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = aut_temp_day.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
// == night data ==
void readAutNightTemp() {
  if (index < aut_temp_night.getRowCount()) {
    println("night temp data point: ", index, " | ", aut_temp_night.getFloat(index, 1));
    index++;
  }
}
void drawAutNightTemp() {
  fill(0);
  for (int i = 0; i < aut_temp_night.getRowCount(); i++) {
    //=== DO SOMETHING WITH DATA ===
    float value = aut_temp_night.getFloat(i, 1);
    fill(setTempColour(value));
    float circleRadius = value;
    circle(offset/2+(i*offset), soundRectCY-(soundRectH/3)+(circleRadius*2.5), circleRadius);
    //=== END SOMETHING WITH DATA ===
  }
}
//=== END AIR TEMPERATURE ===
