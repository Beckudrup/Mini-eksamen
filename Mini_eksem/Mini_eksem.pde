ArrayList<Button> buttonList = new ArrayList();
ArrayList<Exercise1> list1 = new ArrayList<Exercise1>();
ArrayList<Exercise2> list2 = new ArrayList<Exercise2>();
ArrayList<Exercise3> list3 = new ArrayList<Exercise3>();
DisplayAndInput displayAndInput = new DisplayAndInput();
Database database = new Database(this);
int screenChange = 0;
boolean notdoneyet = true;
ArrayList<TextField> textFieldList = new ArrayList();
int k;
int rightanswer;
boolean changedScreen;
int shownQuestion;
boolean imshitatcoding;

void setup() {
  size(600, 600);
}

void draw() {
  clear();
  //println(buttonList);
  buttonAndTextFieldfixer();
  displayAndInput.display(buttonList, screenChange, textFieldList, rightanswer);
  screenChanger();
}

void buttonAndTextFieldfixer() {
  if (screenChange == 0 && notdoneyet == true) {
    database.setups();
    database.showExerciseFractions(k = 1);
    database.showExerciseTrigonometry(k = 1);
    database.showExerciseVectors(k = 1);
    buttonList.add(new Button(350, 200, 200, 50, "Teachers login"));
    buttonList.add(new Button(50, 200, 200, 50, "Student login"));
    notdoneyet = false;
  }
  if (screenChange == 1 && notdoneyet == true) {
    buttonList.add(new Button(20, 20, 75, 50, "Back"));
    buttonList.add(new Button(400, 200, 125, 90, "List of \nstudents"));
    buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
    buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
    buttonList.add(new Button(10, 300, 200, 50, "Trigonemetry"));
    buttonList.add(new Button(400, 500, 200, 50, "delete database"));
    notdoneyet = false;
  }
  if (screenChange == 2 && notdoneyet == true) {
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
    buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
    buttonList.add(new Button(10, 300, 200, 50, "Trigonemetry"));
    notdoneyet = false;
  }
  if (screenChange == 3 && notdoneyet == true) {
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
  }

  if ((screenChange == 4 || screenChange == 5 || screenChange == 6) && notdoneyet == true) {
    textFieldList.add(new TextField(200, 100, 200, 50));
    for (int i = 0; i < 4; i++) {
      textFieldList.add(new TextField(50 + i * 150, 200, 80, 50));
      buttonList.add(new Button(70 + i * 150, 270, 40, 50, ""));
    }
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(500, 530, 80, 50, "Next"));
    buttonList.add(new Button(500, 100, 80, 50, "Save"));
    buttonList.add(new Button(20, 20, 80, 50, "Home"));
    shownQuestion=0;
    notdoneyet = false;
  }

  if (screenChange == 7 && notdoneyet == true) {
    buttonList.add(new Button(40, 270, 40, 50, ""));
    buttonList.add(new Button(190, 270, 40, 50, ""));
    buttonList.add(new Button(340, 270, 40, 50, ""));
    buttonList.add(new Button(490, 270, 40, 50, ""));
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(500, 530, 80, 50, "Next"));
    buttonList.add(new Button(20, 20, 80, 50, "Home"));
    shownQuestion=0;
    notdoneyet = false;
  }
  if (screenChange == 8 && notdoneyet == true) {
    buttonList.add(new Button(40, 270, 40, 50, ""));
    buttonList.add(new Button(190, 270, 40, 50, ""));
    buttonList.add(new Button(340, 270, 40, 50, ""));
    buttonList.add(new Button(490, 270, 40, 50, ""));
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(500, 530, 80, 50, "Next"));
    buttonList.add(new Button(20, 20, 80, 50, "Home"));
    shownQuestion=0;
    notdoneyet = false;
  }
  if (screenChange == 9 && notdoneyet == true) {
    buttonList.add(new Button(40, 270, 40, 50, ""));
    buttonList.add(new Button(190, 270, 40, 50, ""));
    buttonList.add(new Button(340, 270, 40, 50, ""));
    buttonList.add(new Button(490, 270, 40, 50, ""));
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(500, 530, 80, 50, "Next"));
    buttonList.add(new Button(20, 20, 80, 50, "Home"));
    shownQuestion = 0;
    notdoneyet = false;
  }
}

void screenChanger() {
  buttonEffects(0, 0, 1);//fra main til teacher
  buttonEffects(0, 1, 0);//fra teacher til main
  buttonEffects(0, 2, 0);//fra elev til main
  buttonEffects(1, 0, 2);//fra main til elev
  for (int i = 1; i < 5; i++)
    buttonEffects(i, 1, i + 2);//fra teacher til teahcer list of studens
  buttonEffects(0, 3, 1);//fra teacher Student List til teacher
  for (int i = 4; i < 7; i++)
    buttonEffects(buttonList.size()-1, i, 1);//fra teacher Student List til teacher
  for (int i = 1; i < 4; i++)
    buttonEffects(i, 2, i + 6);//fra Student til Student fractions
  for (int i = 7; i<10; i++) {
    buttonEffects(6, i, 2);//fra Student til Student fractions
  }
  
  if (changedScreen == false) {
    buttonEffectsGetData();
    buttonEffectsNoVariables();
  }
  changedScreen = false;
  imshitatcoding = false;
}

void buttonEffects(int nrknap, int onScreen, int toScreen) {

  if (screenChange == onScreen&&changedScreen == false) {
    if (buttonList.get(nrknap).isButtonPressed()) {
      screenChange = toScreen;
      buttonList.clear();
      textFieldList.clear();
      notdoneyet = true;
      changedScreen = true;
    }
  }
}

void buttonEffectsNoVariables() {
  if (screenChange == 4) {
    if (buttonList.get(6).isButtonPressed()&&imshitatcoding == false) {
      database.saveExerciseFractions(textFieldList.get(0).inPut, textFieldList.get(1).inPut, textFieldList.get(2).inPut, textFieldList.get(3).inPut, textFieldList.get(4).inPut);
      rightanswer = 0;
      imshitatcoding=true;
    }
  }
  if (screenChange == 5) {
    if (buttonList.get(6).isButtonPressed() && imshitatcoding == false) {
      database.saveExerciseVectors(textFieldList.get(0).inPut, textFieldList.get(1).inPut, textFieldList.get(2).inPut, textFieldList.get(3).inPut, textFieldList.get(4).inPut);
      rightanswer = 0;
      imshitatcoding = true;
    }
  }
  if (screenChange == 6) {
    if (buttonList.get(6).isButtonPressed() && imshitatcoding == false) {
      database.saveExerciseTrigonometry(textFieldList.get(0).inPut, textFieldList.get(1).inPut, textFieldList.get(2).inPut, textFieldList.get(3).inPut, textFieldList.get(4).inPut);
      rightanswer = 0;
      imshitatcoding = true;
    }
  }

  if (screenChange == 4 || screenChange == 5 || screenChange == 6 || screenChange == 7 || screenChange == 8 || screenChange == 9&&imshitatcoding==false) {
    for (int i = 0; i < 4; i++) {
      //println(buttonList.size());
      if (buttonList.get(i).isButtonPressed()) {
        rightanswer = i;
      }
    }
  }

  if (screenChange == 7 || screenChange == 8 || screenChange == 9) {
    if  (buttonList.get(4).isButtonPressed()) {
      shownQuestion++;
    }
    if  (buttonList.get(5).isButtonPressed()&&shownQuestion>0) {
      shownQuestion--;
    }
  }
  if (screenChange==1) {
    if (buttonList.get(5).isButtonPressed()) {
      database.Delete();
    }
  }
}

void buttonEffectsGetData() {
  database.showExerciseFractions(k);
  if (screenChange == 7) {
    int y = 140;
    int x = 20;
    for (Exercise1 e1 : list1 ) {
      /*Methods e.q(the question), e.a1(first answer),
       e.a2(second answer), e.a3(third answer), e.a4(forth answer)*/
      text(e1.q, x, y);
      x += 100;
      text(e1.a1, x, y);
      x += 100;
      text(e1.a2, x, y);
      x += 100;
      text(e1.a3, x, y);
      x += 100;
      text(e1.a4, x, y);
      x += 100;
    }
    if (buttonList.get(4).isButtonPressed()) {
      k++;
      println(buttonList.get(4));
    } else if (buttonList.get(5).isButtonPressed() && k>1) {
      k--;
      println(buttonList.get(5));
    }
  } else
    if (screenChange == 8) {
      int y = 140;
      int x = 20;

      for (Exercise2 e2 : list2 ) {
        /*Methods e.q(the question), e.a1(first answer),
         e.a2(second answer), e.a3(third answer), e.a4(forth answer)*/
        text(e2.q, x, y);
        x += 100;
        text(e2.a1, x, y);
        x += 100;
        text(e2.a2, x, y);
        x += 100;
        text(e2.a3, x, y);
        x += 100;
        text(e2.a4, x, y);
        x += 100;
      }
    } else
      if (screenChange == 9) {
        int y = 140;
        int x = 20;

        for (Exercise3 e3 : list3 ) {
          /*Methods e.q(the question), e.a1(first answer),
           e.a2(second answer), e.a3(third answer), e.a4(forth answer)*/
          text(e3.q, x, y);
          x += 100;
          text(e3.a1, x, y);
          x += 100;
          text(e3.a2, x, y);
          x += 100;
          text(e3.a3, x, y);
          x += 100;
          text(e3.a4, x, y);
          x += 100;
        }
      }
}

void mousePressed() {

  for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).registerClick(mouseX, mouseY);
  }
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).registerClick(mouseX, mouseY);
  }
}

void mouseReleased() {
  for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).release();
  }
}

void keyTyped() {
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).textInsideField(key);
  }
}
