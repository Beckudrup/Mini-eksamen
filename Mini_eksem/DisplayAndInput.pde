

 
class DisplayAndInput {
  
int screenChange;
  DisplayAndInput() {
  }
  void display(ArrayList<Button> buttonList,int screenChange) {
   // loginscreen();
    this.screenChange=screenChange;
    for(int i = 0;i<buttonList.size();i++){
    buttonList.get(i).drawButton();
    }
   
    
  }

  void loginscreen() {
    background(3, 140, 213);
    text("Welcome to OSU", 200, 100);
  }
  int screenchanger(){
  int screenchange=0;
  
  return screenchange;
  }
void teacherScreen1(){
if(screenChange == 1){
  
}
}
}
