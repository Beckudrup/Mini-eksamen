ArrayList<Button> buttonList = new ArrayList();
DisplayAndInput displayAndInput = new DisplayAndInput();
int screenChange = 0;
JSONObject json;
boolean notdoneyet = true;

void setup() {
  size(600, 600);
  json = loadJSONObject("LoveCraft.JSON");

  for (int i = 0; i < json.size(); i++) {
    JSONArray deities = json.getJSONArray("deities"); 
    println(deities);
  }
}
void draw() {
  clear();
  buttonfixer();
  displayAndInput.display(buttonList, screenChange);
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
  if(buttonList.size()>0){
  if(buttonList.get(0).isButtonPressed()){
    if(screenChange==0){
    screenChange=1;
    buttonList.clear();
    }
  }
  }
}
  
void mouseClicked(){
  for(int i = 0;i<buttonList.size();i++){
buttonList.get(i).registerClick(mouseX,mouseY);
  }


}
