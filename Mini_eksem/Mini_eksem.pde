ArrayList<Button> buttonList = new ArrayList();
DisplayAndInput displayAndInput = new DisplayAndInput();
//Database database = new Database(this);
int screenChange = 0;
boolean notdoneyet = true;
TextField TFractions = new TextField (100,100,100,100);
ArrayList<TextField> textFieldList = new ArrayList();


void setup() {
  size(600, 600);
}

void draw() {
  clear();
  buttonfixer();
  displayAndInput.display(buttonList, screenChange, TFractions);
  screenChanger();
}

void buttonfixer() {
  if (screenChange == 0 && notdoneyet == true) {
    buttonList.add(new Button(350, 200, 200, 50, "Teachers login"));
    buttonList.add(new Button(50, 200, 200, 50, "Student login"));
    notdoneyet = false;
  }
}

void screenChanger() {
  buttonEffects(0,0,1);
   buttonEffects(0,1,0);
   buttonEffects(0,2,0);
   buttonEffects(1,0,2);
}

void buttonEffects(int nrknap,int onScreen,int toScreen){
if (buttonList.size() > nrknap) {
    if (buttonList.get(nrknap).isButtonPressed()) {
      if (screenChange == onScreen) {
        screenChange = toScreen;//Elev screen
        buttonList.clear();
        notdoneyet = true;
      }
    }
  }

}

void mouseClicked() {
  for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).registerClick(mouseX, mouseY);
  }
  TFractions.registerClick(mouseX,mouseY);
}

void keyTyped(){
 TFractions.textInsideField(key);
  
}
