void debug(ButtonBar b) {
  ////=== READING TABLES CORRECTLY ===
  println("summer solar data: ", sum_solar_xy.getRowCount());
  println("autumn solar data: ", aut_solar_xy.getRowCount());
  println("winter solar data: ", win_solar_xy.getRowCount());
  println("spring solar data: ", spr_solar_xy.getRowCount());

  //println("summer temp data: ", sum_temp_xy.getRowCount());
  //println("autumn temp data: ", aut_temp_xy.getRowCount());
  //println("winter temp data: ", win_temp_xy.getRowCount());
  //println("spring temp data: ", spr_temp_xy.getRowCount());

  //=== STORING HUMIDITY VALUES CORRECTLY ===
  //println("Summer day: ", sumHumidDay);//       use: sumHumidDay.get(0) to get SPECIFIC values
  //println("Summer night: ", sumHumidNight);
  //println("Autumn day: ", autHumidDay);
  //println("Autumn night: ", autHumidNight);
  //println("Winter day: ", winHumidDay);
  //println("Winter night: ", winHumidNight);
  //println("Spring day: ", sprHumidDay);
  //println("Spring night: ", sprHumidNight);

  //=== BUTTON BAR ===
  //println(b.getItem("a"));
  //b.changeItem("a", "text", "WELCOME");
  //b.changeItem("b", "text", "SUMMER");
  //b.changeItem("c", "text", "AUTUMN");
  //b.changeItem("d", "text", "WINTER");
  //b.changeItem("e", "text", "SPRING");
  //=== END BUTTON BAR ===

  //======== CHECKS ========
  //boolean initial values
  //println("sum; ", is_summer);
  //println("aut; ", is_autumn);
  //println("win; ", is_winter);
  //println("spr; ", is_spring);

  //hover over buttons
  b.onMove(new CallbackListener() {
    public void controlEvent(CallbackEvent ev) {
      ButtonBar bar = (ButtonBar)ev.getController();
      println("hovered! ", bar.hover()); //prints to command when hovering on buttons
    }
  }
  );
}


void readSumHumidDay() {
  if (index < sum_humid_day.getRowCount()) {
    //=== DO SOMETHING WITH DATA ===

    //=== END SOMETHING WITH DATA ===
    println("humidity data point: ", index, " | ", sum_humid_day.getFloat(index, 1));
    index++;
  }
}
