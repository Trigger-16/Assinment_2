PImage moon_img;
PImage stars_img;
PImage clouds_img;

void createWelcomeBut() {
  // CREATE WELCOME BUTTONS IN setup()
  size(1300, 900);
  cp5 = new ControlP5(this);
  moon_img = loadImage("moon.png"); // moon image
  stars_img = loadImage("stars.png"); //stars image
  clouds_img = loadImage("clouds.png"); //clouds image
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
  
}

void welcome2() {
}
void welcome3() {
}
