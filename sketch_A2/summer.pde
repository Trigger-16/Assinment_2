void summer() {
  //clockBackground();
  readSumSolarxy();
  readSumTempxy();
  //DEBUG //readSumHumidDay();
  
  //if (index < sum_solar_xy.getRowCount()) {
  //  //=== DO SOMETHING WITH DATA ===

  //  //=== END SOMETHING WITH DATA ===
  //  println("data point: ", index, " | ", sum_solar_xy.getFloat(index, 1));
  //  index++;
  //}
}

void readSumSolarxy() {
  if (index < sum_solar_xy.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("solar data point: ", index, " | ", sum_solar_xy.getFloat(index, 1));
    index++;
  }
}

void readSumTempxy() {
  
  //=== THIS FOR LOOPS THE DATA REALLY QUICKLY ===
  //int i;
  //for (i = 0; i < sum_temp_xy.getRowCount(); i++) {
  //  println("temp data point: ", i, " | ", sum_temp_xy.getFloat(i, 1));
  //} 
  //=== END FOR LOOP ===
  
  if (index < sum_temp_xy.getRowCount()) {
    println("temp data point: ", index, " | ", sum_temp_xy.getFloat(index, 1));
    index++;
  }
}
