//color moonLay1 = color(247, 223, 120);
//color moonLay2 = color(246, 220, 108);
//color moonLay3 = color(246, 215, 86);
//color moonLay4 = color(245, 210, 65);
//color moonLay5 = color(245, 205, 43);

FloatList summerRadiation6amTo6pm;
FloatList summerRadiation6pmTo6am;
int counter = 0;

void drawSumSun() {
  readSumRadiation();

  for (int i = 0; i < 360; i+=5) {
      //  for (float i = summerRadiation6amTo6pm.get(sliderValue); i < summerRadiation6amTo6pm.max(); i+=5) {
      float xP = cos(radians(i)) * 50 + width / 2;
      float yP = sin(radians(i)) *100 + height / 3 - height / 80;

      float radius = sin(radians(counter+i )) * 200;
      radius = abs(radius);
      
        
      //float col=map(i, 0, 360, summerRadiation6amTo6pm.min(), summerRadiation6amTo6pm.max());
      float col1 = map(i, 0, 360, 245, 247);
      //float col2 = map(summerRadiation6amTo6pm.get(timeSum), summerRadiation6amTo6pm.min(), summerRadiation6amTo6pm.max(), 121, 245);
      //float col3 = map(summerRadiation6amTo6pm.get(timeSum), summerRadiation6amTo6pm.min(), summerRadiation6amTo6pm.max(), 43, 120);
      float col2 = map(summerRadiation6amTo6pm.get(timeSum), 0, 360, 121, 245);
      float col3 = map(i, 0, 360, 43, 120);
      noStroke();
      //fill(247, col2, 43);
      fill(col1, col2, col3);

      ellipse(xP, yP, radius, radius);
    
  }
  counter++;
  println("timeSum = " + timeSum);
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
