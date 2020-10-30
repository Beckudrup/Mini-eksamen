JSONObject json;
Button teacher = new Button(200, 200, 200, 50, "Teachers login");


void setup() {
  size(600, 600);
  json = loadJSONObject("LoveCraft.JSON");
  
  for (int i = 0; i < json.size(); i++) {
    JSONArray deities = json.getJSONArray("deities"); 
    println(deities);
  }
}
void draw() {
  teacher.drawButton();
}
