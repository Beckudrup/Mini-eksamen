

ArrayList<Button> buttonList = new ArrayList();
DisplayAndInput displayAndInput = new DisplayAndInput();
int screenChange=0;
JSONObject json;




void setup() {
  size(600, 600);
  json = loadJSONObject("LoveCraft.JSON");

  for (int i = 0; i < json.size(); i++) {
    JSONArray deities = json.getJSONArray("deities"); 
    println(deities);
  }
}
void draw(){
  displayAndInput.display(buttonList,screenChange);
}

void buttonfixer(){
if (screenChange==0){
buttonList.add(new Button(350,200,200,50,"Teachers login"));
buttonList.add(new Button(50,200,200,50,"Student login"));
}
}
