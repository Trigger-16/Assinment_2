FloatList summerRadiation6amTo6pm;
FloatList summerRadiation6pmTo6am;
FloatList autumnRadiation6amTo6pm;
FloatList autumnRadiation6pmTo6am;
FloatList winterRadiation6amTo6pm;
FloatList winterRadiation6pmTo6am;
FloatList springRadiation6amTo6pm;
FloatList springRadiation6pmTo6am;
int counter = 0;

//=== Draw the sun ===

//Summer Sun
void drawSumSun() {
  readSumRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 150, 247);
    float col2 = map(summerRadiation6amTo6pm.get(timeSum), summerRadiation6amTo6pm.min(), summerRadiation6amTo6pm.max(), 0, 255);
    float col3 = map(i, 0, 360, 0, 150);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Autumn Sun
void drawAutSun() {
  readAutRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 150, 247);
    float col2 = map(autumnRadiation6amTo6pm.get(timeAut), autumnRadiation6amTo6pm.min(), autumnRadiation6amTo6pm.max(), 0, 255);   
    float col3 = map(i, 0, 360, 0, 150);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Winter Sun
void drawWinSun() {
  readWinRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 150, 247);
    float col2 = map(winterRadiation6amTo6pm.get(timeWin), winterRadiation6amTo6pm.min(), winterRadiation6amTo6pm.max(), 0, 255);   
    float col3 = map(i, 0, 360, 0, 150);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Spring Sun
void drawSprSun() {
  readSprRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 150, 247);
    float col2 = map(springRadiation6amTo6pm.get(timeSpr), springRadiation6amTo6pm.min(), springRadiation6amTo6pm.max(), 0, 255);   
    float col3 = map(i, 0, 360, 0, 150);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}


//=== Draw the moon ===

//Summer Moon
void drawSumMoon() {
    readSumRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 0, 150);
    float col2 = map(summerRadiation6pmTo6am.get(timeSum), summerRadiation6pmTo6am.min(), summerRadiation6pmTo6am.max(), 180, 255);
    float col3 = map(i, 0, 360, 150, 247);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Autumn Moon
void drawAutMoon() {
    readAutRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 0, 150);
    float col2 = map(autumnRadiation6pmTo6am.get(timeAut), autumnRadiation6pmTo6am.min(), autumnRadiation6pmTo6am.max(), 180, 255);
    float col3 = map(i, 0, 360, 150, 247);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Winter Moon
void drawWinMoon() {
    readWinRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 0, 150);
    float col2 = map(winterRadiation6pmTo6am.get(timeWin), winterRadiation6pmTo6am.min(), winterRadiation6pmTo6am.max(), 180, 255);
    float col3 = map(i, 0, 360, 150, 247);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//Spring Moon
void drawSprMoon() {
    readSprRadiation();

  for (int i = 0; i < 360; i+=5) {
    //set the x and y position of the circle
    float xP = cos(radians(i)) * 50 + width / 2;
    float yP = sin(radians(i)) *100 + height / 3 - height / 80;

    float radius = sin(radians(counter+i )) * 200;
    //use absulate value because the sin might be negitive sometimes
    radius = abs(radius);

    float col1 = map(i, 0, 360, 0, 150);
    float col2 = map(springRadiation6pmTo6am.get(timeSpr), springRadiation6pmTo6am.min(), springRadiation6pmTo6am.max(), 180, 255);
    float col3 = map(i, 0, 360, 150, 247);
    noStroke();
    fill(col1, col2, col3);
    ellipse(xP, yP, radius, radius);
  }
  counter++;
}

//=== Read the radiation data ===

//Read Summer 
void readSumRadiation() {
  summerRadiation6amTo6pm = new FloatList();
  summerRadiation6pmTo6am = new FloatList();

  for (int i = 73; i < 217; i++) {
    summerRadiation6amTo6pm.append(sum_solar_xy.getFloat(i, 1));
  }

  for (int i = 217; i < 288; i++) {
    summerRadiation6pmTo6am.append(sum_solar_xy.getFloat(i, 1));
  }

  for (int i = 0; i < 73; i++) {
    summerRadiation6pmTo6am.append(sum_solar_xy.getFloat(i, 1));
  }
}

//Read Autumn
void readAutRadiation() {
  autumnRadiation6amTo6pm = new FloatList();
  autumnRadiation6pmTo6am = new FloatList();

  for (int i = 73; i < 216; i++) {
    autumnRadiation6amTo6pm.append(aut_solar_xy.getFloat(i, 1));
  }

  for (int i = 216; i < 285; i++) {
    autumnRadiation6pmTo6am.append(aut_solar_xy.getFloat(i, 1));
  }

  for (int i = 0; i < 73; i++) {
    autumnRadiation6pmTo6am.append(aut_solar_xy.getFloat(i, 1));
  }
}

//Read winter
void readWinRadiation() {
  winterRadiation6amTo6pm = new FloatList();
  winterRadiation6pmTo6am = new FloatList();

  for (int i = 73; i < 217; i++) {
    winterRadiation6amTo6pm.append(win_solar_xy.getFloat(i, 1));
  }

  for (int i = 217; i < 288; i++) {
    winterRadiation6pmTo6am.append(win_solar_xy.getFloat(i, 1));
  }

  for (int i = 0; i < 73; i++) {
    winterRadiation6pmTo6am.append(win_solar_xy.getFloat(i, 1));
  }
}

//Read Spring
void readSprRadiation() {
  springRadiation6amTo6pm = new FloatList();
  springRadiation6pmTo6am = new FloatList();

  for (int i = 73; i < 216; i++) {
    springRadiation6amTo6pm.append(spr_solar_xy.getFloat(i, 1));
  }

  for (int i = 216; i < 287; i++) {
    springRadiation6pmTo6am.append(spr_solar_xy.getFloat(i, 1));
  }

  for (int i = 0; i < 73; i++) {
    springRadiation6pmTo6am.append(spr_solar_xy.getFloat(i, 1));
  }
}
