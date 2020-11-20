ArrayList<Button> buttonList = new ArrayList();
DisplayAndInput displayAndInput = new DisplayAndInput();
Database database = new Database(this);
int screenChange = 0;
boolean notdoneyet = true;
ArrayList<TextField> textFieldList = new ArrayList();
int k;
int rightanswer;
boolean changedScreen;

void setup() {
  size(600, 600);
}

void draw() {
  clear();
  //println(buttonList);
  buttonAndTextFieldfixer();
  displayAndInput.display(buttonList, screenChange, textFieldList,rightanswer);
  screenChanger();
}

void buttonAndTextFieldfixer() {
  if (screenChange == 0 && notdoneyet == true) {
    database.setups();
    buttonList.add(new Button(350, 200, 200, 50, "Teachers login"));
    buttonList.add(new Button(50, 200, 200, 50, "Student login"));
    notdoneyet = false;
  }
  if (screenChange == 1&&notdoneyet == true) {
    buttonList.add(new Button(20, 20, 75, 50, "Back"));
    buttonList.add(new Button(400, 200, 125, 90, "List of \nstudents"));
    buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
    buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
    buttonList.add(new Button(10, 300, 200, 50, "Trigonemetry"));
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
    textFieldList.add(new TextField( 200, 100, 200, 50));
    for (int i = 0; i < 4; i++){
      textFieldList.add(new TextField( 50+i*150, 200, 80, 50));
       buttonList.add(new Button(70+i*150, 270, 40, 50, ""));  
  }
    buttonList.add(new Button(20, 530, 80, 50, "Back"));
    buttonList.add(new Button(500, 530, 80, 50, "Next"));
    buttonList.add(new Button(500, 100, 80, 50, "Save"));
    notdoneyet = false;
  }
}

void screenChanger() {
  buttonEffectsNoVariables();
  buttonEffects(0, 0, 1);//fra main til teacher
  buttonEffects(0, 1, 0);//fra teacher til main
  buttonEffects(0, 2, 0);//fra elev til main
  buttonEffects(1, 0, 2);//fra main til elev
  for (int i = 1; i < 5; i++)
    buttonEffects(i, 1, i + 2);//fra teacher til teahcer list of studens
  buttonEffects(0, 3, 1);//fra teacher Student List til teacher
  for (int i = 4; i < 7; i++)
    buttonEffects(4, i, 1);//fra teacher Student List til teacher
  for (int i = 1; i < 4; i++)
    buttonEffects(i, 2, i + 6);//fra Student til Student fractions
//  buttonEffectsGetData();
  changedScreen=false;
}

void buttonEffects(int nrknap, int onScreen, int toScreen) {
 
    if (screenChange == onScreen&&changedScreen==false) {
    if (buttonList.get(nrknap).isButtonPressed()) {
      
        screenChange = toScreen;
        buttonList.clear();
        textFieldList.clear();
        notdoneyet = true;
        changedScreen=true;
    }
  }
}
void buttonEffectsNoVariables() {
  if (screenChange == 4||screenChange ==5||screenChange ==6) {
    if (buttonList.get(6).isButtonPressed()) {
      
     //   database.saveExercise(textFieldList.get(0).inPut, textFieldList.get(1).inPut, textFieldList.get(2).inPut, textFieldList.get(3).inPut, textFieldList.get(4).inPut, k);
        buttonList.clear();
        textFieldList.clear();
        notdoneyet = true;
        rightanswer = 0;
        k++;
      }
    }
 
  
  if (screenChange == 4||screenChange ==5||screenChange ==6) {
 
    if (buttonList.get(0).isButtonPressed()) {
   
    rightanswer = 0;
     }
   
  
    if (buttonList.get(1).isButtonPressed()) {
   
    rightanswer = 1;
     }
   


    if (buttonList.get(2).isButtonPressed()) {
   
    rightanswer = 2;
     }
   


    if (buttonList.get(3).isButtonPressed()) {
   
    rightanswer = 3;
     }
   

}
}

/*void buttonEffectsGetData() {
  if (buttonList.size() > 2) {
    if (buttonList.get(2).isButtonPressed()) {
      if (screenChange == 4 ||screenChange == 5 ||screenChange == 6) {
        println("works");

        //database.saveExercise(textFieldList.get(0).inPut, textFieldList.get(1).inPut, textFieldList.get(2).inPut, textFieldList.get(3).inPut, textFieldList.get(4).inPut);
        buttonList.clear();
        textFieldList.clear();
        notdoneyet = true;
      }
    }
  }
}*/
void mouseClicked() {

  for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).registerClick(mouseX, mouseY);
  }
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).registerClick(mouseX, mouseY);
  }
}

void keyReleased(){
 for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).release();
  }
}

void keyTyped() {
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).textInsideField(key);
  }
}
