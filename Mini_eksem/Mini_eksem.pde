Button student = new Button(50,200,200,50,"Students login");
Button teacher = new Button(350,200,200,50,"Teachers login");


void setup(){
size(600,600);

}
void draw(){
teacher.drawButton();
student.drawButton();
if(teacher.isButtonPressed()){
screenChange = 1;  
}
}
