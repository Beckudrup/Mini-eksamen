class DisplayAndInput {

  int screenChange;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList, int screenChange,TextField TFractions) {

    this.screenChange=screenChange;
    background(3, 140, 213);
    loginscreen();
    teacherScreen1();
    teacherFractions();
    for (int i = 0; i < buttonList.size(); i++) {
      buttonList.get(i).drawButton();
    }
  }

  void loginscreen() {
    if (screenChange==0) {
      background(3, 140, 213);
      text("Welcome to OSU", 200, 100);
    }
  }

  void teacherScreen1() {
    if (screenChange == 1) {
      buttonList.add(new Button(20, 20, 75, 50, "Back"));
      buttonList.add(new Button(400, 200, 125, 90, "List of \nstudents"));
      buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
      buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
      buttonList.add(new Button(10, 300, 200, 50, ">"));


      text("Teacher", 250, 100);
    }
  }
  void teacherFractions() {
    if (screenChange == 2) {
      fill(0, 0, 0);
      text("Fraction", 250, 25);
      fill(255,255,255);
    TFractions.display();
    TFractions1.display();
    TFractions2.display();
    TFractions3.display();
    TFractions4.display();
    text(TFractions.inPut,200,200);
    }
  } 
}
