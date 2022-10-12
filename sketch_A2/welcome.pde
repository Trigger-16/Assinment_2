PImage moon_img;
PImage stars_img;
PImage clouds_img;
PImage solar_img;
PImage humidity_img;

void createWelcomeBut() {
  // CREATE WELCOME BUTTONS IN setup()
  size(1300, 900);
  cp5 = new ControlP5(this);
  moon_img = loadImage("moon.png"); // moon image
  stars_img = loadImage("stars.png"); //stars image
  clouds_img = loadImage("clouds.png"); //clouds image
  solar_img = loadImage("solar.png"); // solar radiation 
  humidity_img = loadImage("humidity.png");
  imageMode(CENTER);

  cp5.addButton("home")
    .setValue(0)
    .setPosition(150, 700)
    .setSize(200, 50)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;

  cp5.addButton("solar radiation")
    .setValue(0)
    .setPosition(400, 700)
    .setSize(200, 50)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;

  cp5.addButton("humidity")
    .setValue(0)
    .setPosition(675, 700)
    .setSize(200, 50)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;

  cp5.addButton("air temperature")
    .setValue(0)
    .setPosition(950, 700)
    .setSize(200, 50)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;
}

void hideWelcomeBut() {
  // HIDE WELCOME BUTTONS
  // when you click on summer and the buttons disappear
}

void showWelcomeBut() {
  // SHOW WELCOME BUTTONS
  // when you click on welcome and the buttons reappear
}

void welcome() {
  //photos, text
  background(#1d3960);
  image(moon_img, width/2, height/2, width, height); // moon image
  image(stars_img, width/2, height/2, width, height); // stars image
  image(clouds_img, width/2, height/2, width, height); // clouds image

}

void welcome1() {
  background(daySky); 
  image(clouds_img, width/2, height/2, width, height);
  textSize(15);
  text("Air temperature is the measure of thermal energy of molecules in the air above the Broadway Building rooftop, and is measured using the TA40 Series.", 530, 800);
}

void welcome2() {
  background(#fffbeb); 
  image(solar_img, width/2, height/2, width, height);
  textSize(15);
  text("Solar Radiation is the electromagnetic radiation emitted by the sun and is measured by using the Pyranometer SR40.", 530, 800);
}
void welcome3() {
  background(#ffdeb7); 
  image(humidity_img, width/2, height/2, width, height); 
  textSize(15);
  text("Humidity is the amount of water vapor in the air, measured from the ranges of 0-100% Relative Humdity (RH)", 530, 800);
}
