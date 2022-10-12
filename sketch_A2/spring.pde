//Tables
Table spr_temp_day;
Table spr_temp_night;
//FloatList
FloatList sprTempDay; 
FloatList sprTempNight;
//Values for mapping temperature data
float sprDayTempMin, sprDayTempMax; 
float sprNightTempMin, sprNightTempMax; 

void spring() {
  if (is_night == true  && is_spring == true) {
    drawSprNightTemp();
    image(stars_img, width/2, height/2, width, height); // stars image
    image(clouds_img2, movingX, height/2+50, width, height); // moving clouds
    movingX++;
  } else if (is_day == true && is_spring == true) {
    drawSprDayTemp();
    image(clouds_img2, movingX, height/2+50, width, height); // moving clouds
    movingX++; 
  }
}


//=== AIR TEMPERATURE ===
void readSprTemp() {
  //Day data
  sprTempDay = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < spr_temp_day.getRowCount(); i++) {
    float value =  spr_temp_day.getFloat(i, 1);
    sprTempDay.append(value);
  }
  sprDayTempMin = sprTempDay.min();
  sprDayTempMax = sprTempDay.max();
  println("spr day temp min: ", sprDayTempMin);
  println("spr day temp max: ", sprDayTempMax);

  //Night data
  sprTempNight = new FloatList(); //create FloatList to acces .min() and .max() functions to map the circleY position 
  for (int i = 0; i < spr_temp_night.getRowCount(); i++) {
    float value =  spr_temp_night.getFloat(i, 1);
    sprTempNight.append(value);
  }
  sprNightTempMin = sprTempNight.min();
  sprNightTempMax = sprTempNight.max();
  println("spr night temp min: ", sprNightTempMin);
  println("spr night temp max: ", sprNightTempMax);
}
// == day data ==
void drawSprDayTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(sprDayTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(sprDayTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < sprTempDay.size(); i++) {
    float value = sprTempDay.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    circleX = offset/2 + (i*offset);
    float mappedY = map(value, sprDayTempMin, sprDayTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);
    
    playSound(circleX, circleRadius);
  }
}
// == night data ==
void drawSprNightTemp() {
  fill(0);

  pushMatrix();
  textFont(font2);
  text((int(sprNightTempMin) + "°C"), airtempTxt_X, airtempTxt_upperY);
  text((int(sprNightTempMax) + "°C"), airtempTxt_X, airtempTxt_lowerY);
  strokeWeight(1);
  stroke(20);
  line(airtempTxt_X, airtempTxt_upperY+15, airtempTxt_X, airtempTxt_lowerY-15);
  noStroke();
  popMatrix();

  for (int i = 0; i < sprTempNight.size(); i++) {
    float value = sprTempNight.get(i);
    float circleRadius = value; //sum_temp_day.getFloat(i, 1);
    float circleX = offset/2 + (i*offset);
    float mappedY = map(value, sprNightTempMin, sprNightTempMax, (soundRectCY - soundRectH/2 + 30), (soundRectCY + soundRectH/2 - 30));

    fill(setTempColour(value));
    circle(circleX, mappedY, circleRadius);
    
    playSound(circleX, circleRadius);
  }
}
//=== END AIR TEMPERATURE ===
