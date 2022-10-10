FloatList summerRadiation6amTo6pm;
FloatList summerRadiation6pmTo6am;
int counter = 0;

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
