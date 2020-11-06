class TextField {
  boolean isInside;
  String inPut = "";
  int x, y, w, h;

  TextField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void registerClick(float xin, float yin) {

    if (xin > x && xin < x + w && yin < y + h && yin > y) {
      isInside = true;
    } else {
      isInside = false;
    }
  }

  void display() {
    rect(x, y, w, h);
  }
  void textInsideField(char key) {
    if (isInside) {
      if (key == BACKSPACE && inPut.length() > 0) {
        inPut = inPut.substring(0, inPut.length() -1);
      } else if (key!=BACKSPACE) {
        inPut = inPut + key;
      }
    }
  }
}
