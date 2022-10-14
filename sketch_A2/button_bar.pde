void createButtonBar() {
  b = cp5.addButtonBar("bar")
    .setPosition(0, 0)
    .setSize(width, height/10)
    .addItems(split("welcome summer autumn winter spring", " "))
    //.setFont(p)  
    .setColorBackground(peach)
    .setColorForeground(lightPeach)
    .setColorActive(lightPeach)
    ;
}

void bar(int n) {
//  println("bar clicked, item-value:", n);
  if (n == 1) {
    is_summer = true;
    is_autumn = false;
    is_winter = false;
    is_spring = false;
    is_welcome = false;
    is_welcome1 = false;
    is_welcome2 = false;
    is_welcome3 = false;
    index = 0; //resetting the context of index for reading of data purposes
    println("It's now summer: ", is_summer);
    sum_sound.play();
  } else if (n == 2) {
    is_summer = false;
    is_autumn = true;
    is_winter = false;
    is_spring = false;
    is_welcome = false;
    is_welcome1 = false;
    is_welcome2 = false;
    is_welcome3 = false;
    index = 0; //resetting the context of index for reading of data purposes
    println("It's now autumn: ", is_autumn);
    aut_sound.play();
  } else if (n == 3) {
    is_summer = false;
    is_autumn = false;
    is_winter = true;
    is_spring = false;
    is_welcome = false;
    is_welcome1 = false;
    is_welcome2 = false;
    is_welcome3 = false;
    index = 0; //resetting the context of index for reading of data purposes
    println("It's now winter: ", is_winter);
    win_sound.play();
  } else if (n == 4) {
    is_summer = false;
    is_autumn = false;
    is_winter = false;
    is_spring = true;
    is_welcome = false;
    is_welcome1 = false;
    is_welcome2 = false;
    is_welcome3 = false;
    index = 0; //resetting the context of index for reading of data purposes
    println("It's now spring: ", is_spring);
    spr_sound.play();
  } else {
    is_summer = false;
    is_autumn = false;
    is_winter = false;
    is_spring = false;
    is_welcome = true;
    is_welcome1 = false;
    is_welcome2 = false;
    is_welcome3 = false;
    index = 0; //resetting the context of index for reading of data purposes
    println("Welcome!");
  }
}
