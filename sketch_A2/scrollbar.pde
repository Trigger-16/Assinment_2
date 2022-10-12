/*
*  Example taken and edited from Processing Examples -> Topics -> GUI -> Scrollbar
 */
//Scrollbars
HScrollbar sum_hsb;
HScrollbar aut_hsb;
HScrollbar win_hsb;
HScrollbar spr_hsb;
//Universal variables
float circleX;
float linePos;

//=== FUNCTIONS FOR LINE THAT FOLLOWS SCROLLBAR / SLIDER ===
void sumHSB() {
  stroke(50, 50, 50, 20);
  strokeWeight(10);
  linePos = sum_hsb.getPos();
  line(linePos, cy+sliderHeight, linePos, cy+sliderHeight+soundRectH);
  sum_hsb.update();
  sum_hsb.display();
}

void autHSB() {
  stroke(50, 50, 50, 20);
  strokeWeight(10);
  linePos = aut_hsb.getPos();
  line(linePos, cy+sliderHeight, linePos, cy+sliderHeight+soundRectH);
  aut_hsb.update();
  aut_hsb.display();
}

void winHSB() {
  stroke(50, 50, 50, 20);
  strokeWeight(10);
  linePos = win_hsb.getPos();
  line(linePos, cy+sliderHeight, linePos, cy+sliderHeight+soundRectH);
  win_hsb.update();
  win_hsb.display();
}

void sprHSB() {
  stroke(50, 50, 50, 20);
  strokeWeight(10);
  linePos = spr_hsb.getPos();
  line(linePos, cy+sliderHeight, linePos, cy+sliderHeight+soundRectH);
  spr_hsb.update();
  spr_hsb.display();
}
//=== END FUNCTIONS FOR LINE THAT FOLLOWS SCROLLBAR / SLIDER ===

//=== SCROLLBAR CLASS ==-
class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;

  HScrollbar (float xp, float yp, int sw, int sh) {//, int l) {
    swidth = sw; //= 1300
    sheight = sh; //= 100
    int widthtoheight = sw - sh; // = 100
    ratio = (float)sw / (float)widthtoheight; //= 1300/1200 = 1.08
    xpos = xp;
    ypos = yp;//-sheight/2; //= cy - 50
    spos = xpos + swidth/2;// - sheight/2; // = 0 + 750 - 50 = 700
    newspos = spos; 
    sposMin = xpos;
    sposMax = xpos + swidth;// - sheight; //= 0 + 1300 - 100 = 1200
    // loose = l;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      //newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
      newspos = constrain(mouseX, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos);///loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
      mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    //fill(255, 255, 255, 10);
    //rect(xpos, ypos, swidth, sheight); //scrollbar background
    if (over || locked) {
      fill(0, 0, 0);
    } else {
      fill(102, 102, 102);
    }
    rect(spos, ypos, 10, sheight);// sheight, sheight); //scrollbar draggy controller thing
  }

  float getPos() {  // Convert spos to be values between 0 and the total width of the scrollbar
    return spos + 5;// * ratio;
  }
}
//=== END SCROLLBAR CLASS ==-
