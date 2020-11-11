class DisplayAndInput {

  int screenChange;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList, int screenChange, ArrayList<TextField> TFList) {

    this.screenChange=screenChange;
    background(3, 140, 213);
    loginscreen();
    teacherScreen();
    teacherFractions();
    for (int i = 0; i < buttonList.size(); i++) {
      buttonList.get(i).drawButton();
    }
    for (int i = 0; i < TFList.size(); i++) {
      TFList.get(i).display();
    }
  }

  void loginscreen() {
    if (screenChange==0) {
      background(3, 140, 213);
      text("Welcome to OSU", 200, 100);
    }
  }

  void teacherScreen() {
    if (screenChange == 1) {
      text("Teacher", 250, 100);
    }
  }
  void studentScreen() {
    if (screenChange==2) {
    }
  }
  void teacherListOfStudendts() {
    if (screenChange==3) {
    }
  }
  void teacherFractions() {
    if (screenChange == 4) {
      fill(0, 0, 0);
      text("Fraction", 250, 25);
      fill(255, 255, 255);
      text(TFractions.inPut, 200, 200);
    }
  }
  void teacherVectors() {
    if (screenChange==5) {
    }
  }
  void teacherTrigonometry() {
    if (screenChange==6) {
    }
  }
  void studentVectors() {
    if (screenChange==7) {
    }
  }
  void studentFractions() {
    if (screenChange==8) {
    }
  }
  void studentTrigonometry() {
    if (screenChange==9) {
    }
  }
}
