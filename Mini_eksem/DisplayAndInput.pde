
class DisplayAndInput {
  
int screenChange;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList,int screenChange) {
   
    this.screenChange=screenChange;
    background(3, 140, 213);
    loginscreen();
    teacherScreen1();
    for(int i = 0; i < buttonList.size(); i++){
    buttonList.get(i).drawButton();
    }
   
    
  }

  void loginscreen() {
    if(screenChange==0){
    background(3, 140, 213);
    text("Welcome to OSU", 200, 100);
  }
  }
  
void teacherScreen1(){
if(screenChange == 1){
  buttonList.add(new Button(20, 20, 75, 50, "Back"));
  buttonList.add(new Button(400, 200, 125, 90, "List of \nstudents"));
  buttonList.add(new Button(10, 200, 125, 50, "Fractions"));
  buttonList.add(new Button(10, 400, 120, 50, "Vectors"));
  buttonList.add(new Button(10, 300, 200, 50, "Trigonometry"));

    
  text("Teacher",250,100);
}
}
void teacherFractions(){
 if (screenChange == 3){
text("Fraction",50,50);   
 }
 
 
  
}
}
