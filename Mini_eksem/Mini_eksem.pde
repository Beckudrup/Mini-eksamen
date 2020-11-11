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
  buttonAndTextFieldfixer();
  displayAndInput.display(buttonList, screenChange, textFieldList);
  screenChanger();
}

void buttonAndTextFieldfixer() {
  if (screenChange == 0 && notdoneyet == true) {
    buttonList.add(new Button(350, 200, 200, 50, "Teachers login"));
    buttonList.add(new Button(50, 200, 200, 50, "Student login"));
    notdoneyet = false;
  }
  if (screenChange==1&&notdoneyet == true){
      buttonList.add(new Button(20, 20, 75, 50, "Back"));
      buttonList.add(new Button(400, 200, 125, 90, "List of \nstudents"));
      buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
      buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
      buttonList.add(new Button(10, 300, 200, 50, "Trigonemetry"));
      notdoneyet = false;
  }
  if (screenChange==4&&notdoneyet == true){
  textFieldList.add(new TextField( 200,  200,  200,  50));
  textFieldList.add(new TextField( 50,  300,  80,  50));
  textFieldList.add(new TextField( 200,  300,  80,  50));
  textFieldList.add(new TextField( 350,  300,  80,  50));
  textFieldList.add(new TextField( 500,  300,  80,  50));
  notdoneyet = false;
  }
   if (screenChange==5&&notdoneyet == true){
  textFieldList.add(new TextField( 200,  200,  200,  50));
  textFieldList.add(new TextField( 50,  300,  80,  50));
  textFieldList.add(new TextField( 200,  300,  80,  50));
  textFieldList.add(new TextField( 350,  300,  80,  50));
  textFieldList.add(new TextField( 500,  300,  80,  50));
  notdoneyet = false;
  }
   if (screenChange==6&&notdoneyet == true){
  textFieldList.add(new TextField( 200,  200,  200,  50));
  textFieldList.add(new TextField( 50,  300,  80,  50));
  textFieldList.add(new TextField( 200,  300,  80,  50));
  textFieldList.add(new TextField( 350,  300,  80,  50));
  textFieldList.add(new TextField( 500,  300,  80,  50));
  notdoneyet = false;
  }
}

void screenChanger() {
   buttonEffects(0,0,1);//fra main til teacher
   buttonEffects(0,1,0);//fra teacher til main
   buttonEffects(0,2,0);//fra elev til main
   buttonEffects(1,0,2);//fra main til elev
   buttonEffects(1,1,3);//fra teacher til teahcer list of studens
   buttonEffects(2,1,4);//fra teacher til teacher fractions
   buttonEffects(3,1,5);//fra teacher til vectors
   buttonEffects(4,1,6);//fra teacher til trigonometry
}

void buttonEffects(int nrknap,int onScreen,int toScreen){
if (buttonList.size() > nrknap) {
    if (buttonList.get(nrknap).isButtonPressed()) {
      if (screenChange == onScreen) {
        screenChange = toScreen;
        buttonList.clear();
        
        notdoneyet = true;
      }
    }
  }

}

void mouseClicked() {
  if(buttonList.size()>0){
  for (int i = 0; i < buttonList.size(); i++) {
    buttonList.get(i).registerClick(mouseX, mouseY);
  }}
  if(textFieldList.size()>0){
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).registerClick(mouseX, mouseY);
  }}
  
}

void keyTyped(){
  for (int i = 0; i < textFieldList.size(); i++) {
    textFieldList.get(i).textInsideField(key);
  }
 
  
}
