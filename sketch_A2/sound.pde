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
void playSumSound(float circleX, float circleRadius) {
  float circleX_Bound1 = circleX - circleRadius + 10;
  float circleX_Bound2 = circleX + circleRadius - 10;
  if (circleX_Bound1 < linePos && linePos < circleX_Bound2 && sum_temp_sound.isPlaying() == false && mousePressed == true) {
    sum_temp_sound.play();
  }
}
void playAutSound(float circleX, float circleRadius) {
  float circleX_Bound1 = circleX - circleRadius + 10;
  float circleX_Bound2 = circleX + circleRadius - 10;
  if (circleX_Bound1 < linePos && linePos < circleX_Bound2 && aut_temp_sound.isPlaying() == false && mousePressed == true) {
    aut_temp_sound.play();
  }
}
void playWinSound(float circleX, float circleRadius) {
  float circleX_Bound1 = circleX - circleRadius + 10;
  float circleX_Bound2 = circleX + circleRadius - 10;
  if (circleX_Bound1 < linePos && linePos < circleX_Bound2 && win_temp_sound.isPlaying() == false && mousePressed == true) {
    win_temp_sound.play();
  }
}
void playSprSound(float circleX, float circleRadius) {
  float circleX_Bound1 = circleX - circleRadius + 10;
  float circleX_Bound2 = circleX + circleRadius - 10;
  if (circleX_Bound1 < linePos && linePos < circleX_Bound2 && spr_temp_sound.isPlaying() == false && mousePressed == true) {
    spr_temp_sound.play();
  }
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
