/* 31080 Interactive Media, Spring 2022
 * === Contributors ===
 * Rebecca Lu (13560560)
 * Zijia Zhu (13473778)
 * Carmen Ly (13547599)
 * Adriel Carino (13931908)
 *
 * === Image sources ===
 - flower: https://static.vecteezy.com/system/resources/previews/001/190/232/non_2x/flower-png.png
 * - sun: https://static.vecteezy.com/system/resources/previews/001/189/223/non_2x/sun-png.png
 * - leaf: https://static.vecteezy.com/system/resources/previews/009/342/562/non_2x/autumn-leaf-clipart-design-illustration-free-png.png
 * - snowflake: https://static.vecteezy.com/system/resources/previews/001/194/635/non_2x/snowflake-png.png
 * === Sound Credits ===
 * - "Bird Whistling, Robin, Single, 13.wav" by InspectorJ (www.jshaw.co.uk) of Freesound.org
 *
 * === Github ===
 * https://github.com/Trigger-16/Assinment_2
 */

//=== INITIALISE GLOBAL VARIABLES ===
//import beads.*;
import processing.sound.*;
import java.util.Arrays;
import controlP5.*;

//AudioContext ac;
ControlP5 cp5;

//Tables
Table sum_solar_xy;
Table aut_solar_xy;
Table win_solar_xy;
Table spr_solar_xy;
//Images
PImage sun_img;
PImage leaf_img;
PImage snowflake_img;
PImage flower_img;
//Fonts
PFont font1;
PFont font2;
PFont font3;
//Flags
boolean is_summer, is_autumn, is_winter, is_spring;
boolean is_welcome = true;
boolean is_welcome1, is_welcome2, is_welcome3;
boolean is_day = true;
boolean is_night;
//Colours
color peach = color(255, 155, 155);
color lightPeach = color(255, 191, 191);
color lighterPeach = color(255, 217, 217);
color taro = color(210, 175, 255); // #d2afff;
color lightTaro = color(225, 204, 252);
color deepBlue = color(31, 38, 54);
color lightBlue = color(34, 229, 253);
color lighterBlue = color(34, 229, 253, 50);
color nightSky = color(29, 57, 96); //color(0, 90, 119);
color daySky = color(158, 217, 237);
//Sounds
SoundFile sum_sound;
SoundFile aut_sound;
SoundFile win_sound;
SoundFile spr_sound;
SoundFile jazz_loop;
SoundFile test;
//CP5
ButtonBar b;
//Variables
int cx, cy; //centre x, y
int top_cx, top_cy; //top section, centre x, y
int amX = 50; //x & y position for time slider labels
int pmX, am_pmY;
float airtempTxt_X, airtempTxt_upperY, airtempTxt_lowerY;
//Loading CSV/data
int index = 0; //this is the index to iterate through datasets

//=== END GLOBAL VARIABLES ===

void setup() {
  size(1300, 900);
  //===INITIALISE SETTINGS ===
  //ac = new AudioContext();
  cp5 = new ControlP5(this);   //ControlFont font = new ControlFont(font1); // Initialise Font Settings
  //== fonts ==
  font1 = createFont("Lato-Regular.ttf", 36);
  font2 = createFont("Lato-Regular.ttf", 20);
  font3 = createFont("Lato-Regular.ttf", 30);
  cp5.setFont(font1);
  //== variables ==
  cx = width / 2; //centre x pos
  cy = (height+height/11) / 2; //centre y pos
  top_cx = cx; //centre x pos of the top rectangle
  top_cy = cy/2; //centre y pos of the top rectangle
  pmX = width - amX; //x position for time slider labels
  am_pmY = cy + 70; //y position for time slider labels
  offset = width/12; //offset for airTemp data points
  //===END SETTINGS ===

  //=== LOAD TABLES ===
  sum_solar_xy = loadTable("SolarRadiation_Summer.csv", "csv");
  aut_solar_xy = loadTable("SolarRadiation_Autumn.csv", "csv");
  win_solar_xy = loadTable("SolarRadiation_Winter.csv", "csv");
  spr_solar_xy = loadTable("SolarRadiation_Spring.csv", "csv");

  sum_temp_day = loadTable("AirTemp_Summer_Day.csv", "csv");
  sum_temp_night = loadTable("AirTemp_Summer_Night.csv", "csv");
  aut_temp_day = loadTable("AirTemp_Autumn_Day.csv", "csv");
  aut_temp_night = loadTable("AirTemp_Autumn_Night.csv", "csv");
  win_temp_day = loadTable("AirTemp_Winter_Day.csv", "csv");
  win_temp_night = loadTable("AirTemp_Winter_Night.csv", "csv");
  spr_temp_day = loadTable("AirTemp_Spring_Day.csv", "csv");
  spr_temp_night = loadTable("AirTemp_Spring_Night.csv", "csv");

  sum_humid_day = loadTable("Humidity_Summer_Day.csv", "csv");
  sum_humid_night = loadTable("Humidity_Summer_Night.csv", "csv");
  aut_humid_day = loadTable("Humidity_Autumn_Day.csv", "csv");
  aut_humid_night = loadTable("Humidity_Autumn_Night.csv", "csv");
  win_humid_day = loadTable("Humidity_Winter_Day.csv", "csv");
  win_humid_night = loadTable("Humidity_Winter_Night.csv", "csv");
  spr_humid_day = loadTable("Humidity_Spring_Day.csv", "csv");
  spr_humid_night = loadTable("Humidity_Spring_Night.csv", "csv");

  readHumidity(); //this must be very early in the code. do not remove this line
  //== solar radiation ==
  readSumRadiation();
  //=== END LOAD TABLES ===

  //=== LOAD IMAGES ===
  sun_img = loadImage("vecteezy_sun.png");
  leaf_img = loadImage("vecteezy_leaf.png");
  snowflake_img = loadImage("vecteezy_snowflake.png");
  flower_img = loadImage("vecteezy_flower.png");
  imageMode(CENTER);
  //=== END LOAD IMAGES ===

  //=== LOAD SOUND FILES ===
  sum_sound = new SoundFile(this, "summer_wave.wav");
  aut_sound = new SoundFile(this, "autumn_leaves.wav");
  win_sound = new SoundFile(this, "winter_thunder.aiff");
  spr_sound = new SoundFile(this, "spring_bird.wav");
  sum_sound.amp(0.6); //normalise sound files volumes
  spr_sound.amp(0.3);
  jazz_loop = new SoundFile(this, "jazz-loop.wav");
  jazz_loop.loop();

  test = new SoundFile(this, "drum.wav");
  test.amp(0.9);
  //=== END SOUND FILES ===

  //=== BUTTON BAR & WELCOME BUTTONS ===
  createButtonBar();
  createWelcomeBut();
  //=== END BUTTON BAR & WELCOME BUTTONS ===

  //=== SLIDERS ===
  timeSumSlider();
  timeAutSlider();
  timeWinSlider();
  timeSprSlider();
  //scrollbar with slider for air temp/sound
  sum_hsb = new HScrollbar(0, cy, width, 100);//, 5);
  aut_hsb = new HScrollbar(0, cy, width, 100);//, 5);
  win_hsb = new HScrollbar(0, cy, width, 100);//, 5);
  spr_hsb = new HScrollbar(0, cy, width, 100);//, 5);

  readSumTemp();
  readAutTemp();
  readWinTemp();
  readSprTemp();
  //=== END SLIDERS ===

  //=== BOTTOM STRIP BUTTONS (HUMIDITY) ==
  sumDayCols(); //the starting value of is_day = true && is_night = false, so use day colours first
  autDayCols();
  winDayCols();
  sprDayCols();
  createBottomButtons();
  //=== END BOTTOM STRIP BUTTONS ===
}

void draw() {
  if (is_night == true) {
    background(nightSky);
    sumNightCols();   //changes colours of bottom buttons ('heatmap')
    autNightCols();
    winNightCols();
    sprNightCols();
    setButCols();
  } else if (is_day == true) {
    background(daySky);
    sumDayCols();
    autDayCols();
    winDayCols();
    sprDayCols();
    setButCols();
  }

  if (is_welcome == true) { //HOME
    welcome(); //function/method that creates the welcome screen
    showWelcomeBut();
    hideTimeSliders();
    hideAllButtons();
  } else if (is_welcome1 == true) { //SOLAR RADIATION
    welcome1();
    hideTimeSliders();
    hideAllButtons();
  } else if (is_welcome2 == true) { //HUMIDITY
    welcome2();
    hideTimeSliders();
    hideAllButtons();
  } else if (is_welcome3 == true) { //AIR TEMPERATURE
    welcome3();
    hideTimeSliders();
    hideAllButtons();

    //=== START SUMMER ===
  } else if (is_summer == true && is_day == true) {
    showSumSlid(); //slider
    showSumBut(); //humid buttons
    hideWelcomeBut(); 
    soundRect();
    summer();
    sumHSB();    //scroll bar
    drawSumSun();
    //  playSound(sumTempDay);
  } else if (is_summer == true && is_night == true) {
    showSumSlid(); //slider
    showSumBut(); //humid buttons
    hideWelcomeBut(); 
    soundRect();
    summer();
    sumHSB();    //scroll bar
    drawSumMoon();
    //  playSound(sumTempNight);

    //=== START AUTUMN ===
  } else if (is_autumn == true && is_day == true) {
    showAutSlid(); //slider
    showAutBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    autumn();
    autHSB(); //scroll bar
    //drawAutSun();
    //   playSound(autTempDay);
  } else if (is_autumn == true && is_night == true) {
    showAutSlid(); //slider
    showAutBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    autumn();
    autHSB(); //scroll bar
    //drawAutMoon();
    //  playSound(autTempNight);

    //=== START WINTER ===
  } else if (is_winter == true && is_day == true) {
    showWinSlid(); //slider
    showWinBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    winter();
    winHSB(); //scroll bar
    //drawWinSun();
    //  playSound(winTempDay);
  } else if (is_winter == true && is_night == true) {
    showWinSlid(); //slider
    showWinBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    winter();
    winHSB(); //scroll bar
    //drawWinMoon();
    //   playSound(winTempNight);

    //=== START SPRING ===
  } else if (is_spring == true && is_day == true) {
    showSprSlid(); //slider
    showSprBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    spring();
    sprHSB();
    //drawSprSun();
    //   playSound(sprTempDay);
  } else if (is_spring == true && is_night == true) {
    showSprSlid(); //slider
    showSprBut(); //humid buttons
    hideWelcomeBut();
    soundRect();
    spring();
    sprHSB();
    //drawSprMoon();
    //  playSound(sprTempNight);
  }

  //=== KEEP ALL OF THESE AT THE BOTTOM OF THE draw() FUNCTION ===
  //== images ==
  if (sun_img != null && is_summer == true) {
    image(sun_img, width-100, height/10+80, width/10.2, height/8); //image(sun_img, cx, cy, width/5, height/4);
  } else if (leaf_img != null && is_autumn  == true) {
    image(leaf_img, width-100, height/10+80, width/16, height/8); //image(leaf_img, cx, cy, width/8, height/4);
  } else if (snowflake_img != null && is_winter  == true) {
    image(snowflake_img, width-100, height/10+80, width/12, height/8); //image(snowflake_img, cx, cy, width/6, height/4);
  } else if (flower_img != null && is_spring  == true) {
    image(flower_img, width-100, height/10+80, width/10, height/8); //image(flower_img, cx, cy, width/5, height/4);
  }

  slidText();
}

//FUNCTION USED TO SHOW ALL SENSOR DATA DETAILS AFTER PRESSING HUMIDITY BUTTON
void showDetails(int n, FloatList humidList, FloatList tempList) {
  //get details
  float humidVal = int(humidList.get(n));
  float tempVal = int(tempList.get(n));

  //show details
  fill(0); //text colour
  textAlign(LEFT);
  textFont(font2);
  text("Humidity: " + humidVal, 10, top_cy);
  text("Air Temperature: " + tempVal, 10, top_cy + 50);
}

//Just keep these for now; alternative to pressing the buttons
//It just doesn't change the active color
void keyPressed() {
  if (key == '1') {
    bar(1);
  } else if (key == '2') {
    bar(2);
  } else if (key == '3') {
    bar(3);
  } else if (key == '4') {
    bar(4);
  } else  if (key == 'n') {
    is_night = true;
    is_day = false;
    println("it's night! ", is_night);
  } else if (key == 'd') {
    is_night = false;
    is_day = true;
    println("it's daylight! ", is_day);
    //} else {
    //  bar(0);
  }
}
