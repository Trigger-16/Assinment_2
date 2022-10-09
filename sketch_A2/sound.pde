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

  //fill(0);
  //pushMatrix();
  //stroke(20);
  //strokeWeight(1);
  //line(0, soundRectCY, width, soundRectCY);
  ////Text (27 deg celsius)
  //textFont(font2);
  //float angle1 = radians(270);
  //translate(amX/4, soundRectCY);
  //rotate(angle1);
  //text("27°C", 0, 0); 
  //popMatrix();
}


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
