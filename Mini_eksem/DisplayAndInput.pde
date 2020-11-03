

class DisplayAndInput {
  
int screenChange;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList,int screenChange) {
   
    this.screenChange=screenChange;
    loginscreen();
    
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
  text("Teacher",200,200);
}
}
}
