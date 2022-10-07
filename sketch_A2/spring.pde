//Tables
Table spr_temp_day;
Table spr_temp_night;

void spring() {
  readSprSolarxy();
}

void readSprSolarxy() {
  if (index < spr_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", spr_solar_xy.getFloat(index, 1));
    index++;
  }
}
