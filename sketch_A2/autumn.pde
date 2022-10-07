//Tables
Table aut_temp_day;
Table aut_temp_night;

void autumn() {
  readAutSolarxy();
  
  //if (index < aut_solar_xy.getRowCount()) {
  //  //=== DO SOMETHING WITH DATA ===

  //  //=== END SOMETHING WITH DATA ===
  //  println("data point: ", index, " | ", aut_solar_xy.getFloat(index, 1));
  //  index++;
  //}
}

void readAutSolarxy() {
  if (index < aut_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("data point: ", index, " | ", aut_solar_xy.getFloat(index, 1));
    index++;
  }
}
