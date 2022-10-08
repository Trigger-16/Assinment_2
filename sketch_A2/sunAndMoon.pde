color moonLay1 = color(247, 223, 120);
color moonLay2 = color(246, 220, 108);
color moonLay3 = color(246, 215, 86);
color moonLay4 = color(245, 210, 65);
color moonLay5 = color(245, 205, 43);

int windowSizeX = 1300;
int windowSizeY = 900;
float sAmposX = windowSizeX/2;
float sAmposY = windowSizeY/4;

void moon() {
  noStroke();
  fill(moonLay5);
  arc(sAmposX, sAmposY, 200, 200, radians(mouseY), 2*PI);
}

void sun() {
  
}
