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
int timeSum = 6;//panning between day and night, so only 12 hours 
int timeAut = 6;//panning between day and night, so only 12 hours 
int timeWin = 6;//panning between day and night, so only 12 hours 
int timeSpr = 6;//panning between day and night, so only 12 hours 

//=== CREATE SLIDERS ===
void timeSumSlider() {
  cp5.addSlider("timeSum")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeSum").getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSum").getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSum").hide();
}

void timeAutSlider() {
  cp5.addSlider("timeAut")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeAut").getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeAut").getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeAut").hide();
}

void timeWinSlider() {
  cp5.addSlider("timeWin")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeWin").getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeWin").getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeWin").hide();
}

void timeSprSlider() {
  cp5.addSlider("timeSpr")
    .setPosition(0, cy)
    .setRange(1, 12)
    .setSize(sliderWidth, sliderHeight)
    //.setNumberOfTickMarks(12)
    .setSliderMode(Slider.FLEXIBLE) //can change to default value of 'Slider.FIX'
    .setColorBackground(background)
    .setColorForeground(foreground)
    .setColorActive(foregroundActive)
    ;
  cp5.getController("timeSpr").getValueLabel().hide();//.align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSpr").getCaptionLabel().hide();//.align(ControlP5.RIGHT, ControlP5.TOP_OUTSIDE).setPaddingX(5);
  cp5.getController("timeSpr").hide();
}


//=== FUNCTIONS TO TOGGLE ON/OFF SLIDERS ===
void hideTimeSliders() {
  cp5.getController("timeSum").hide();
  cp5.getController("timeAut").hide();
  cp5.getController("timeWin").hide();
  cp5.getController("timeSpr").hide();
}

void showSumSlid() {
  cp5.getController("timeSum").show();
  cp5.getController("timeAut").hide();
  cp5.getController("timeWin").hide();
  cp5.getController("timeSpr").hide();
}

void showAutSlid() {
  cp5.getController("timeSum").hide();
  cp5.getController("timeAut").show();
  cp5.getController("timeWin").hide();
  cp5.getController("timeSpr").hide();
}

void showWinSlid() {
  cp5.getController("timeSum").hide();
  cp5.getController("timeAut").hide();
  cp5.getController("timeWin").show();
  cp5.getController("timeSpr").hide();
}

void showSprSlid() {
  cp5.getController("timeSum").hide();
  cp5.getController("timeAut").hide();
  cp5.getController("timeWin").hide();
  cp5.getController("timeSpr").show();
}
