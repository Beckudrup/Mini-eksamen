class DisplayAndInput {
  int rightAnswer;
  int screenChange;
  ArrayList<Button> buttList;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList, int screenChange, ArrayList<TextField> TFList, int r) {
    this.buttList = buttonList;
    this.screenChange = screenChange;
    this.rightAnswer = r;
    background(3, 140, 213);
    loginscreen();
    teacherScreen();
    studentScreen();
    teacherListOfStudendts();
    teacherFractions();
    teacherVectors();
    teacherTrigonometry();
    studentVectors();
    studentFractions();
    studentTrigonometry();


    for (int i = 0; i < buttonList.size(); i++) {
      buttonList.get(i).drawButton();
    }
    for (int i = 0; i < TFList.size(); i++) {
      TFList.get(i).display();
    }
  }

  void loginscreen() {
    if (screenChange == 0) {
      background(3, 140, 213);
      fill(0, 0, 0);
      textSize(40);
      textAlign(CENTER);
      text("Welcome", width/2, 100);
    }
  }

  void teacherScreen() {
    if (screenChange == 1) {
      fill(0, 0, 0);
      textSize(40);
      textAlign(CENTER);
      text("Teacher", width/2, 100);
    }
  }
  void studentScreen() {
    if (screenChange == 2) {
      fill(0, 0, 0);
      textSize(40);
      textAlign(CENTER);
      text("Student", width/2, 100);
    }
  }
  void teacherListOfStudendts() {
    if (screenChange == 3) {
    }
  }
  void teacherFractions() {
    if (screenChange == 4) {
      fill(0, 0, 0);
      textSize(40);
      text("Fraction", width/2, 50);
      textAlign(CENTER);
     buttList.get(rightAnswer).valgt();
    }
  }
  void teacherVectors() {
    if (screenChange == 5) {
      fill(0, 0, 0);
      textSize(40);
      text("Vectors", width/2, 50);
      textAlign(CENTER);
      buttList.get(rightAnswer).valgt();
    }
  }
  void teacherTrigonometry() {
    if (screenChange == 6) {
      fill(0, 0, 0);
      textSize(40);
      text("Trigonometry", width/2, 50);
      textAlign(CENTER);
      buttList.get(rightAnswer).valgt();
    }
  }
  void studentFractions() {
    if (screenChange == 7) {
      fill(0, 0, 0);
      textSize(40);
      text("Fraction", width/2, 50);
      textAlign(CENTER);
      buttList.get(rightAnswer).valgt();
    }
  }
    void studentVectors() {
    if (screenChange == 8) {
      fill(0, 0, 0);
      textSize(40);
      text("Vectors", width/2, 50);
      textAlign(CENTER);
     buttList.get(rightAnswer).valgt();
    }
  }
  void studentTrigonometry() {
    if (screenChange == 9) {
      fill(0, 0, 0);
      textSize(40);
      text("Trigonometry", width/2, 50);
      textAlign(CENTER);
     buttList.get(rightAnswer).valgt();
    }
  }
  
}
