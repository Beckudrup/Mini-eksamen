class Button {

  boolean Tryk;

  float xPos, yPos;
  float w, h;
  String text;

  Button(float x, float y, float b, float h, String t) {

    this.w = b;
    this.h = h;
    this.xPos = x;
    this.yPos = y;
    this.text = t;
  }
  public void drawButton() {
    textSize(24);
    fill(0);
    rect(xPos, yPos, w, h);
    fill(255);
    text(text, xPos +10, yPos + 35);
  }
  boolean isButtonPressed() {
    return Tryk;
  }
  void registerClick(float xin, float yin) {

    if (xin > xPos && xin < xPos + w && yin < yPos + h && yin > yPos) {
   //   println(this+ " registerClick");
      Tryk = true;
    }
  }
  void release() {
    Tryk = false;
   // println(this+ " release");
  }
}
