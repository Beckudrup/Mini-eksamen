JSONObject json;
DisplayAndInput displayAndInput = new DisplayAndInput(); 
Button teacher = new Button(350, 200, 200, 50, "Teachers login");


void setup() {
  size(600, 600);
  json = loadJSONObject("LoveCraft.JSON");

  for (int i = 0; i < json.size(); i++) {
    JSONArray deities = json.getJSONArray("deities"); 
    println(deities);
  }
}

void draw() {
  displayAndInput.display(teacher);

  student.drawButton();
  if (teacher.isButtonPressed()) {
    screenChange = 1;  
    println(screenChange);
  }
}

void mousePressed() {
  teacher.registerClick(mouseX, mouseY);
  student.registerClick(mouseX, mouseY);
}

void mouseReleased() {
  teacher.release();
  student.release();
}
