/* 31080 Interactive Media, Spring 2022 
 * === Contributors ===
 * Rebecca Lu [13560560]
 * Zijia Zhu (13473778)
 * Carmen Ly (13547599)
 * Adriel Carino ()
 * 
 * === Image sources ===
 * - spring tree: https://static.vecteezy.com/system/resources/previews/011/027/775/non_2x/hand-drawn-tree-watercolor-illustration-free-png.png
 * - autumn tree: https://static.vecteezy.com/system/resources/previews/011/027/801/non_2x/autumn-tree-watercolor-illustration-free-png.png
 * - flower: https://static.vecteezy.com/system/resources/previews/001/190/232/non_2x/flower-png.png
 * - sun: https://static.vecteezy.com/system/resources/previews/001/189/223/non_2x/sun-png.png
 * - leaf: https://static.vecteezy.com/system/resources/previews/009/342/562/non_2x/autumn-leaf-clipart-design-illustration-free-png.png
 * - snowflake: https://static.vecteezy.com/system/resources/previews/001/194/635/non_2x/snowflake-png.png
 * Sound Credits
 * - "Bird Whistling, Robin, Single, 13.wav" by InspectorJ (www.jshaw.co.uk) of Freesound.org
 *
 * === Github ===
 * https://github.com/Trigger-16/Assinment_2
 */

//=== INITIALISE GLOBAL VARIABLES ===
import beads.*;
import processing.sound.*;
import java.util.Arrays; 
import controlP5.*;

AudioContext ac;
ControlP5 cp5;

//Data
//Table summer_xy;
//Table autumn_xy;
//Table winter_xy;
//Table spring_xy;
Table sum_solar_xy;
Table aut_solar_xy;
Table win_solar_xy;
Table spr_solar_xy;
Table sum_temp_xy;
Table aut_temp_xy;
Table win_temp_xy;
Table spr_temp_xy;
//Images
PImage sun_img;
PImage leaf_img;
PImage snowflake_img;
PImage flower_img;
//Flags
boolean is_summer;
boolean is_autumn;
boolean is_winter;
boolean is_spring;
boolean is_welcome = true; 
//Colours
color peach = color(245, 101, 101);
color lightPeach = color(245, 163, 163);

color foreground = color(79, 48, 131);
color foregroundActive = color(185, 153, 237);
color background = color(97, 87, 113, 80);

//Sounds
SoundFile sum_sound;
SoundFile aut_sound;
SoundFile win_sound;
SoundFile spr_sound;
float amp;
//CP5
ButtonBar b;
int sliderHeight = 100;
int sliderWidth = 1300;
int timeSum = 6;//panning between day and night, so only 12 hours 
int timeAut = 6;//panning between day and night, so only 12 hours 
int timeWin = 6;//panning between day and night, so only 12 hours 
int timeSpr = 6;//panning between day and night, so only 12 hours 
//Clock / pie chart 
int cx, cy; //centre x, y
//Clock
//float secondsRadius;
//float minutesRadius;
//float hoursRadius;
float clockDiameter;
//Pie Chart
float [] rVals = new float [12]; 
float total = 0;
//Loading CSV/data
int index = 0; //this is the index to iterate through datasets

//=== END GLOBAL VARIABLES ===

void setup() {
  size(1300, 900);
  ac = new AudioContext();
  cp5 = new ControlP5(this);

  //===INITIALISE FONT SETTINGS ===
  PFont p = createFont("Lato-Regular.ttf", 36); 
  ControlFont font = new ControlFont(p); // Initialise Font Settings
  cp5.setFont(font);
  //textFont(font);
  //=== END FONT SETTINGS ===
  //=== INITIALISE SLIDER SETTINGS ===

  //=== END SLIDER SETTINGS ===

  //=== LOAD TABLES ===
  //the eif-research.feit.uts.edu.au websites are down right now so no data can be retrieved
  //summer_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-01-14T08%3A00&rToDate=2022-01-16T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //spring_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2021-10-15T08%3A00&rToDate=2021-10-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //autumn_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-04-15T08%3A00&rToDate=2022-04-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");
  //winter_xy = loadTable("https://eif-research.feit.uts.edu.au/graph/?rFromDate=2022-07-15T08%3A00&rToDate=2022-07-17T20%3A00&rFamily=wasp&rSensor=ES_B_04_415_7BD1&rSubSensor=HUMA#collapseOne", "csv");

  sum_solar_xy = loadTable("SolarRadiation_Summer.csv", "csv");
  aut_solar_xy = loadTable("SolarRadiation_Autumn.csv", "csv");
  win_solar_xy = loadTable("SolarRadiation_Winter.csv", "csv");
  spr_solar_xy = loadTable("SolarRadiation_Spring.csv", "csv");

  sum_temp_xy = loadTable("AirTemp_Summer.csv", "csv");
  aut_temp_xy = loadTable("AirTemp_Autumn.csv", "csv");
  win_temp_xy = loadTable("AirTemp_Winter.csv", "csv");
  spr_temp_xy = loadTable("AirTemp_Spring.csv", "csv");
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
  //normalise sound files volumes
  sum_sound.amp(0.6);
  spr_sound.amp(0.3);
  //=== END SOUND FILES ===

  //== CLOCK / PIE CHART SETTINGS ===
  //clock
  stroke(255);
  cx = width / 2;
  cy = (height+height/11) / 2;
  int radius = min(width, height-height/10) / 2;
  //secondsRadius = radius * 0.72;
  //minutesRadius = radius * 0.60;
  //hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  //pie chart 
  smooth();
  int i = 0;
  total = 0;
  while (i < rVals.length) {
    rVals [i] = 1;//random (5, 200);
    total = total + rVals [i];
    i += 1;
  }
  //=== END CLOCK / PIE CHART SETTINGS ===

  //=== MAP DATA TO CLOCK / PIE CHART ===

  //=== END MAP DATA TO CLOCK / PIE CHART ===

  //=== BUTTON BAR ===
  ButtonBar b = cp5.addButtonBar("bar")
    .setPosition(0, 0)
    .setSize(width, height/10)
    .addItems(split("welcome summer autumn winter spring", " "))
    //.setFont(p)  
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;
  //=== END BUTTON BAR ===

  //=== SLIDERS ===
  timeSumSlider();
  timeAutSlider();
  timeWinSlider();
  timeSprSlider();
  //=== END SLIDERS ===
  //debug(b); //checks
}

void draw() {
  background(0);
  //=== START CIRCLE / CLOCK ===
  //clock background
  if (is_welcome == true) {
    welcome(); //have a function/method that creates the welcome screen
    cp5.getController("timeSum").hide();
    cp5.getController("timeAut").hide();
    cp5.getController("timeWin").hide();
    cp5.getController("timeSpr").hide();
  } else if (is_summer == true) {
    summer();
    cp5.getController("timeSum").show();
    cp5.getController("timeAut").hide();
    cp5.getController("timeWin").hide();
    cp5.getController("timeSpr").hide();
  } else if (is_autumn == true) {
    autumn();
    cp5.getController("timeSum").hide();
    cp5.getController("timeAut").show();
    cp5.getController("timeWin").hide();
    cp5.getController("timeSpr").hide();
  } else if (is_winter == true) {
    winter();
    cp5.getController("timeSum").hide();
    cp5.getController("timeAut").hide();
    cp5.getController("timeWin").show();
    cp5.getController("timeSpr").hide();
  } else if (is_spring == true) {
    spring();
    cp5.getController("timeSum").hide();
    cp5.getController("timeAut").hide();
    cp5.getController("timeWin").hide();
    cp5.getController("timeSpr").show();
  } 
  //=== END CIRCLE / CLOCK ===

  //=== IMGS ===
  //creating a new slider for each page
  if (sun_img != null && is_summer == true) {
    image(sun_img, cx, cy, width/5, height/4);
  } else if (leaf_img != null && is_autumn  == true) {
    image(leaf_img, cx, cy, width/8, height/4);
  } else if (snowflake_img != null && is_winter  == true) {
    image(snowflake_img, cx, cy, width/6, height/4);
  } else if (flower_img != null && is_spring  == true) {
    image(flower_img, cx, cy, width/5, height/4);
  }
  //=== END IMGS ===
}

//BUTTON BAR (on next tab)
void clockBackground() {
  fill(80);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  //pie chart
  stroke (255);
  strokeWeight (0.5);
  int numberOfElements = rVals.length;
  float angleSteps = TWO_PI / total;
  int i = 0;
  float currentAngle = 0;
  float startAngle = 0;

  while (i < numberOfElements) {
    currentAngle= angleSteps * rVals [i];
    arc (cx, cy, clockDiameter, clockDiameter, startAngle, startAngle+currentAngle);
    line (cx, cy, cx + cos(startAngle)*283, cy + sin(startAngle)*283);
    startAngle = startAngle + currentAngle;
    i += 1;
  }
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
  } else {
    bar(0);
  }
}
