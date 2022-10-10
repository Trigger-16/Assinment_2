//Tables
Table sum_temp_day;
Table sum_temp_night;
//FloatList
FloatList sumTempDay; 
FloatList sumTempNight;
//Values for mapping temperature data
float sumDayTempMin, sumDayTempMax; 
float sumNightTempMin, sumNightTempMax; 

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
void readSumTemp() {
  //Day data
  sumTempDay = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < sum_temp_day.getRowCount(); i++) {
    float value =  sum_temp_day.getFloat(i, 1);
    sumTempDay.append(value);
  }
  sumDayTempMin = sumTempDay.min();
  sumDayTempMax = sumTempDay.max();
  println("sum day temp min: ", sumDayTempMin);
  println("sum day temp max: ", sumDayTempMax);

  //Night data
  sumTempNight = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < sum_temp_night.getRowCount(); i++) {
    float value =  sum_temp_night.getFloat(i, 1);
    sumTempNight.append(value);
  }
  sumNightTempMin = sumTempNight.min();
  sumNightTempMax = sumTempNight.max();
  println("sum night temp min: ", sumNightTempMin);
  println("sum night temp max: ", sumNightTempMax);
}
// == day data ==
void drawSumDayTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(sumDayTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(sumDayTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < sumTempDay.size(); i++) {
    float value = sumTempDay.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    circleX = offset/2 + (i*offset);
    float mappedY = map(value, sumDayTempMin, sumDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);

    playSound(circleX, circleRadius);
  }
}

// == night data ==
void drawSumNightTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(sumNightTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(sumNightTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < sumTempNight.size(); i++) {
    float value = sumTempNight.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    float circleX = offset/2 + (i*offset);
    float mappedY = map(value, sumNightTempMin, sumNightTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);
  }
}
//=== END AIR TEMPERATURE ===
