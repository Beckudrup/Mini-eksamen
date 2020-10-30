Button emne1 = new Button(50,200,200,50,"Fractions");
Button emne2 = new Button(50,200,200,50,"Trigonometry");
Button emne3 = new Button(50,200,200,50,"Vectors");
int screenChange = 0;
void teacherScreen1(){
if(screenChange == 1){
  
}

 
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
