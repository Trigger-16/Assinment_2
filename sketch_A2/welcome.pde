ControlP5 cp5_1;

PImage moon_img;
PImage stars_img;
PImage clouds_img;

Button home;
Button solar;
Button humid;
Button temp;

void createWelcomeBut() { // CREATE WELCOME BUTTONS IN setup()
  //== images ==
  moon_img = loadImage("moon.png"); // moon image
  stars_img = loadImage("stars.png"); //stars image
  clouds_img = loadImage("clouds.png"); //clouds image
  imageMode(CENTER);
  //== button settings ==
  int buttonW = 200;
  int buttonH = 50;
  int buttonGap = (width-buttonW*4)/5; //value is 100
  int buttonY = 700;

  solar = cp5_1.addButton("solarRadiation")
    .setValue(0)
    .setCaptionLabel("solar radiation")
    .setPosition(buttonW + 2*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    // .activateBy(ControlP5.RELEASED)
    ;

  humid = cp5_1.addButton("humidity")
    .setValue(0)
    .setPosition(2*buttonW + 3*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    //.activateBy(ControlP5.RELEASED)
    ;

  temp = cp5_1.addButton("airTemperature")
    .setValue(0)
    .setCaptionLabel("air temperature")
    .setPosition(3*buttonW + 4*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    //.activateBy(ControlP5.RELEASED)
    ;

  //KEEP 'home' BUTTON ON THE BOTTOM. 
  home = cp5_1.addButton("home")
    .setValue(0)
    .setPosition(buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    //.activateBy(ControlP5.RELEASED)
    ;
}

void hideWelcomeBut() {
  // when you click on season tabs, welcome page buttons disappear
  cp5_1.getController("home").hide();
  cp5_1.getController("solarRadiation").hide();
  cp5_1.getController("humidity").hide();
  cp5_1.getController("airTemperature").hide();
}

void showWelcomeBut() {
  // when you click on welcome, the buttons reappear
  cp5_1.getController("home").show();
  cp5_1.getController("solarRadiation").show();
  cp5_1.getController("humidity").show();
  cp5_1.getController("airTemperature").show();
}

//=== HOME PAGE ===
void welcome() {  //photos, text
  textFont(font3);
  int x = 50;
  int y = height/10 + 50;

  if (is_welcome == true && is_night == true) {  
    background(#1d3960);
    image(moon_img, width/2, height/2, width, height); // moon image
    image(stars_img, width/2, height/2, width, height); // stars image
    image(clouds_img, width/2, height/2, width, height); // clouds image

    fill(255); //text colour
    textAlign(LEFT);
    text("Welcome!", x, y); 
    text("Press 'd' and see what happens!", x, y+50);
  } else if (is_welcome == true && is_day == true) {
    // @ CARMEN - CREATE A DAYTIME BACKGROUND HERE PLEASE :) - bec
    //== settings ==
    background(daySky);

    //== text ==
    fill(255); //text colour
    textAlign(LEFT);
    text("Welcome!", x, y); 
    text("Press 'n' and see what happens!", x, y+50);
  }
}
//=== END HOME PAGE ===

//=== SOLAR RADIATION PAGE ===
void welcome1() {
  int x = 100;
  int y = 800;

  fill(peach);
  text("Solar radiation is the electromagnetic radiation emitted by the sun and is measured", x, y); 
  text("by using the Pyranometer SR40.", x, y + 50);
}
//=== END SOLAR RADIATION PAGE ===

//=== HUMIDITY PAGE ===
void welcome2() {
  int x = 100;
  int y = 800;

  fill(255);
  text("Humidity is the amount of water vapor in the aire, measured from the range of", x, y); 
  text("0-100% Relative Humidity (RH).", x, y + 50);
}
//=== END HUMIDITY PAGE ===

//=== AIR TEMP PAGE ===
void welcome3() {
  int x = 100;
  int y = 800;

  fill(255);
  text("Air temperature is the measure of thermal energy of molecules in the air above the", x, y); 
  text("Broadway Building rooftop, and is measured using the TA40 Series.", x, y + 50);
}
//=== END AIR TEMP PAGE ===


//=== BUTTON EVENTS === 
// function home will receive changes from controller with name home etc..
void home() {
  println("a button event from home: ");
  is_welcome = true; //when button is clicked, change the boolean flag
  is_welcome1 = false;
  is_welcome2 = false;
  is_welcome3 = false;
}
void solarRadiation() {
  println("a button event from solarRadiation: ");
  is_welcome = false;
  is_welcome1 = true;
  is_welcome2 = false;
  is_welcome3 = false;
}
void humidity() {
  println("a button event from humidity: ");
  is_welcome = false;
  is_welcome1 = false;
  is_welcome2 = true;
  is_welcome3 = false;
}
void airTemperature() {
  println("a button event from airTemp: ");
  is_welcome = false;
  is_welcome1 = false;
  is_welcome2 = false;
  is_welcome3 = true;
}
//=== END BUTTON EVENTS ===
