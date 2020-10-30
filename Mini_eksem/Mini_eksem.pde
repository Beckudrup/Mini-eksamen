Button student = new Button(50,200,200,50,"Students login");


DisplayAndInput displayAndInput = new DisplayAndInput(); 
Button teacher = new Button(350,200,200,50,"Teachers login");


void setup(){
size(600,600);

}
void draw(){
  displayAndInput.display(teacher);


student.drawButton();
if(teacher.isButtonPressed()){
screenChange = 1;  
}
}
