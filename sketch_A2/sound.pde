//utilise sound and air temperature data
int soundRectH = 198; 
int soundRectCY; //NOTE: soundRectX = cx;
int offset;

void soundRect() {
  soundRectCY = cy + sliderHeight + (soundRectH/2);
  airtempTxt_X = 25;
  airtempTxt_upperY = soundRectCY - (soundRectH/2.25);
  airtempTxt_lowerY = soundRectCY + (soundRectH/2.45);
  //Background
  fill(0, 207, 252);
  noStroke();
  rect(0, cy+sliderHeight, width, soundRectH);
}

//=== PLAY SOUND FOR AIR TEMP ===
void playSound(float circleX, float circleRadius) {
  //for (int i = 0; i < tempList.size(); i++) {
  //  float value = tempList.get(i);
  //  float circleRadius = value; //sum_temp_day.getFloat(i, 1);
  //  circleX = offset/2 + (i*offset);

  if (circleX - circleRadius < linePos && linePos < circleX + circleRadius && test.isPlaying() == false && mousePressed == true && played == false) {
    test.play();
    played = true;
  //} else if (circleX - circleRadius > linePos) {
  //  played = false;
  //} else if (linePos > circleX + circleRadius) {
  //  played = false;
  }
  //NEED TO TRIGGER played = false SOMEHOW
}

//=== END PLAY SOUND FOR AIR TEMP ===

//=== COLOUR PICKER FOR AIRTEMP === 
color setTempColour(float value) {
  color finalCol = color(0, 0, 0);
  color from = color(0, 0, 255);
  color to = color(255, 0, 0);
  color a = lerpColor(from, to, 0.2);
  color b = lerpColor(from, to, 0.4);
  color c = lerpColor(from, to, 0.6);
  color d = lerpColor(from, to, 0.8);

  if (value < 24) {
    finalCol = from;
  } else if (24 < value && value < 26) {
    finalCol = a;
  } else if (26 < value && value < 28) {
    finalCol = b;
  } else if (28 < value && value < 30) {
    finalCol = c;
  } else if (30 < value && value < 32) {
    finalCol = d;
  } else if (value > 32) {
    finalCol = to;
  } 
  return finalCol;
}
