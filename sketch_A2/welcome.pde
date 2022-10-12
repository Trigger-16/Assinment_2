PImage moon_img;
PImage stars_img;
PImage clouds_img;
PImage clouds_img2;
PImage sun_img2;
PImage solar_img;
PImage humidity_img;


Button home;
Button solar;
Button humid;
Button temp;

int movingX=300;


//=== HOME PAGE ===
void welcome() {  //photos, text
  imageMode(CENTER);
  textFont(font3);
  int x = 50;
  int y = height/10 + 50;  

  if (is_welcome == true && is_night == true) {  
    background(nightSky);//(#1d3960);
    image(moon_img, width/2, height/2, width, height); // moon image
    image(stars_img, width/2, height/2, width, height); // stars image
    //image(clouds_img, width/2, height/2+50, width, height); // clouds image
    image(clouds_img2, movingX, height/2+50, width, height); // moving clouds
    movingX++;                                               // moving clouds
    //== text ==
    textAlign(LEFT);
    text("Press 'd' and see what happens!", x, y+35);
  } else if (is_welcome == true && is_day == true) {
    background(daySky);
    // @ CARMEN - CREATE A DAYTIME BACKGROUND HERE PLEASE :) - bec

    image(sun_img2, width/2, height/2.5, width/5, width/5); // sun image
    image(clouds_img2, movingX, height/2+50, width, height); // moving clouds
    movingX++;                                               // moving clouds

    //== text ==
    textAlign(LEFT);
    text("Press 'n' and see what happens!", x, y+35);
  } 

  fill(255); //text colour
  textAlign(LEFT);
  text("Welcome!", x, y);
  textFont(font2);
  text("Adriel Carino  13931908", x/2, height-x*2);
  text("Carmen Ly      13547599", x/2, height-x*1.5);
  text("Rebecca Lu     13560560", x/2, height-x);
  text("Zijia Zhu          13473778", x/2, height-x*0.5);
  textAlign(RIGHT);
  text("31080 Interactive Media, Spring 2022", width-x/2, height-x*0.5);
  // text("Spring 2022", width-x*4, height-(x/2.5));
}
//=== END HOME PAGE ===

//=== SOLAR RADIATION PAGE ===
void welcome1() {
  int x = 100;
  int y = 800;
  //== background ==
  color bg = color(254, 250, 234); 
  fill(bg);
  rect(0, 0, width, height);
  image(solar_img, width/2, height/2, width, height);

  //== end background ==
  fill(peach);
  textAlign(LEFT);
  textFont(font3);
  text("Solar radiation is the electromagnetic radiation emitted by the sun and is measured", x, y); 
  text("by using the Pyranometer SR40.", x, y + 50);
}
//=== END SOLAR RADIATION PAGE ===

//=== AIR TEMP PAGE ===
void welcome2() {
  int x = 100;
  int y = 800;
  //== background ==
  color bg = color(125, 158, 203); 
  fill(bg);
  rect(0, 0, width, height);
  //== end background ==
  //image(clouds_img, width/2, height/2, width, height);
  image(clouds_img2, movingX, height/2+50, width, height); // moving clouds
  movingX++; 
  fill(255);
  textAlign(LEFT);
  textFont(font3);
  text("Air temperature is the measure of thermal energy of molecules in the air above the", x, y); 
  text("Broadway Building rooftop, and is measured using the TA40 Series.", x, y + 50);
}
//=== END AIR TEMP PAGE ===

//=== HUMIDITY PAGE ===
void welcome3() {
  int x = 100;
  int y = 800;
  //== background ==
  color bg = color(254, 221, 182); 
  fill(bg);
  rect(0, 0, width, height);
  //== end background ==
  image(humidity_img, width/2, height/2, width, height); 
                         
  fill(100);
  textAlign(LEFT);
  textFont(font3);
  text("Humidity is the amount of water vapor in the air, measured from the range of", x, y); 
  text("0-100% Relative Humidity (RH).", x, y + 50);
}
//=== END HUMIDITY PAGE ===

//=== WELCOME BUTTONS ===
void createWelcomeBut() { // CREATE WELCOME BUTTONS / IMAGES IN setup() (i.e. runs once)
  //== images ==
  moon_img = loadImage("moon.png"); // moon image
  stars_img = loadImage("stars.png"); //stars image
  clouds_img = loadImage("cloudss.png"); //clouds image
  clouds_img2 = loadImage("movingclouds.png"); //clouds image; MOVING CLOUDS - BEC 
  sun_img2 = loadImage("sun.png"); //sun image 
  solar_img = loadImage("solar.png"); // solar radiation 
  humidity_img = loadImage("humidity.png");
  imageMode(CENTER);
  //== button settings ==
  int buttonW = 200;
  int buttonH = 50;
  int buttonGap = (width-buttonW*4)/5; //value is 100
  int buttonY = 700;

  solar = cp5.addButton("solarRadiation")
    .setValue(0)
    .setCaptionLabel("solar radiation")
    .setPosition(buttonW + 2*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    .setFont(font2)
    ;

  temp = cp5.addButton("airTemperature")
    .setValue(0)
    .setCaptionLabel("air temperature")
    .setPosition(2*buttonW + 3*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    .setFont(font2)
    ;

  humid = cp5.addButton("humidity")
    .setValue(0)
    .setPosition(3*buttonW + 4*buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    .setFont(font2)
    ;

  //KEEP 'home' BUTTON ON THE BOTTOM. 
  home = cp5.addButton("home")
    .setValue(0)
    .setPosition(buttonGap, buttonY)
    .setSize(buttonW, buttonH)
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    .setFont(font2)
    ;
}

void hideWelcomeBut() { // when you click on season tabs, welcome page buttons disappear
  home.hide();
  solar.hide();
  temp.hide();
  humid.hide();
}

void showWelcomeBut() { // when you click on welcome, the buttons reappear  
  home.show();
  solar.show();
  temp.show();
  humid.show();
}

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
void airTemperature() {
  println("a button event from airTemp: ");
  is_welcome = false;
  is_welcome1 = false;
  is_welcome2 = true;
  is_welcome3 = false;
}
void humidity() {
  println("a button event from humidity: ");
  is_welcome = false;
  is_welcome1 = false;
  is_welcome2 = false;
  is_welcome3 = true;
}

//=== END BUTTON EVENTS ===
