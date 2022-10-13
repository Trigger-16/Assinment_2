//Tables
Table aut_temp_day;
Table aut_temp_night;
//FloatList
FloatList autTempDay; 
FloatList autTempNight;
//Values for mapping temperature data
float autDayTempMin, autDayTempMax; 
float autNightTempMin, autNightTempMax; 

void autumn() {
  imageMode(CORNER);
  if (is_night == true  && is_autumn == true) {
    drawAutNightTemp();
    image(stars_l, 0, 0, (stars_l.width)+70, height);
    image(stars_r, width-(stars_r.width+90), 0, stars_r.width+90, height);
  } else if (is_day == true && is_autumn == true) {
    drawAutDayTemp();
    image(clouds_r, -90, 0, (clouds_r.width), height);
    image(clouds_l, width-(clouds_l.width)+70, 0, clouds_l.width+90, height);
  }
}


//=== AIR TEMPERATURE ===
void readAutTemp() {
  //Day data
  autTempDay = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < aut_temp_day.getRowCount(); i++) {
    float value =  aut_temp_day.getFloat(i, 1);
    autTempDay.append(value);
  }
  autDayTempMin = autTempDay.min();
  autDayTempMax = autTempDay.max();
  println("aut day temp min: ", autDayTempMin);
  println("aut day temp max: ", autDayTempMax);

  //Night data
  autTempNight = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < aut_temp_night.getRowCount(); i++) {
    float value =  aut_temp_night.getFloat(i, 1);
    autTempNight.append(value);
  }
  autNightTempMin = autTempNight.min();
  autNightTempMax = autTempNight.max();
  println("aut night temp min: ", autNightTempMin);
  println("aut night temp max: ", autNightTempMax);
}
// == day data ==
void drawAutDayTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(autDayTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(autDayTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  popMatrix();

  for (int i = 0; i < autTempDay.size(); i++) {
    float value = autTempDay.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    circleX = offset/2 + (i*offset);
    float mappedY = map(value, autDayTempMin, autDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    noStroke();
    circle(circleX, mappedY, circleRadius);

    playSound(circleX, circleRadius);
  }

  //=== WIP : NOT WORKING WELL ===
  //for (int i = 1; i < autTempDay.size(); i++) {
  //  float value = autTempDay.get((i-1));
  //  float circleX = offset/2 + ((i-1)*offset);
  //  float mappedY = map(value, autDayTempMin, autDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

  //  float nextVal = autTempDay.get(1);
  //  float nextX = offset/2 + (i*offset);
  //  float nextY = map(nextVal, autDayTempMin, autDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

  //  stroke(20);
  //  strokeWeight(1);
  //  line(circleX, mappedY, nextX, nextY);
  //}
}

// == night data ==
void drawAutNightTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(autNightTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(autNightTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < autTempNight.size(); i++) {
    float value = autTempNight.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    float circleX = offset/2 + (i*offset);
    float mappedY = map(value, autNightTempMin, autNightTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);

    playSound(circleX, circleRadius);
  }
}
//=== END AIR TEMPERATURE ===
