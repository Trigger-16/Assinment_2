//slider colours
//color foreground = color(79, 48, 131);
//color foregroundActive = color(185, 153, 237);
//color background = color(97, 87, 113, 80);
color foreground = color(255, 90);
color foregroundActive = color(255);
color background = color(255, 60);
//slider settings
int sliderHeight = 100;
int sliderWidth = 1300;
int timeSum = 7;//panning between day and night, so only 12 hours 
int timeAut = 7;//panning between day and night, so only 12 hours 
int timeWin = 7;//panning between day and night, so only 12 hours 
int timeSpr = 7;//panning between day and night, so only 12 hours 

Slider timesum;
Slider timeaut;
Slider timewin;
Slider timespr;

//=== HELPER FUNCTION ===
void slidText() {
  if (is_welcome == false && is_welcome1 == false && is_welcome2 == false && is_welcome3 == false && is_day == true) {
    //== time sliders miscellaneous ==
    fill(0);
    textFont(font1);
    textAlign(CENTER, CENTER);
    text("6am", amX, am_pmY); //these will be just below the time sliders
    text("5pm", pmX, am_pmY);
    text("12pm", cx+50, am_pmY);
  } else if (is_welcome == false && is_welcome1 == false && is_welcome2 == false && is_welcome3 == false && is_night == true) {
    fill(255);
    textFont(font1);
    textAlign(CENTER, CENTER);
    text("6pm", amX, am_pmY-50); //swap these values for nightime
    text("5am", pmX, am_pmY-50);
    text("12am", cx+50, am_pmY-50);
  }
}
//=== END HELPER FUNCTION ===
//=== CREATE SLIDERS ===
void timeSumSlider() {
  timesum = cp5.addSlider("timeSum")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  timesum.getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  timesum.getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
}

void timeAutSlider() {
  timeaut = cp5.addSlider("timeAut")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  timeaut.getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  timeaut.getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
}

void timeWinSlider() {
  timewin = cp5.addSlider("timeWin")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  timewin.getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  timewin.getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
}

void timeSprSlider() {
  timespr = cp5.addSlider("timeSpr")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  timespr.getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  timespr.getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
}


//=== FUNCTIONS TO TOGGLE ON/OFF SLIDERS ===
void hideTimeSliders() {
  timesum.hide();
  timeaut.hide();
  timewin.hide();
  timespr.hide();
}

void showSumSlid() {
  timesum.show();
  timeaut.hide();
  timewin.hide();
  timespr.hide();
}

void showAutSlid() {
  timesum.hide();
  timeaut.show();
  timewin.hide();
  timespr.hide();
}

void showWinSlid() {
  timesum.hide();
  timeaut.hide();
  timewin.show();
  timespr.hide();
}

void showSprSlid() {
  timesum.hide();
  timeaut.hide();
  timewin.hide();
  timespr.show();
}
