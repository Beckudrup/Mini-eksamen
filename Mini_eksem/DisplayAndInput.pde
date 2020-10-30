class DisplayAndInput {
  DisplayAndInput() {
  }
  void display(Button teacher) {
    loginscreen();
    teacher.drawButton();
  }

  void loginscreen() {
    background(3, 140, 213);
    text("Welcome to OSU", 200, 100);
  }
}
