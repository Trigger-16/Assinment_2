//utilise sound and air temperature data
int soundRectH = 198; 
int soundRectCY = cy + sliderHeight + (soundRectH/2); //NOTE: soundRectX = cx;
int offset = width/7;

void soundRect() {
  //Background
  fill(0, 207, 252);
  noStroke();
  rect(0, cy+sliderHeight, width, soundRectH);
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
