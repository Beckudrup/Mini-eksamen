class Button{
  
  boolean Tryk;

    float xPos, yPos;
    float w, h;
    String text;

Button(float x, float y, float b, float h, String t){

        this.w = b;
        this.h = h;
        this.xPos = x;
        this.yPos = y;
        this.text = t;
    }
  public void tegnKnap() {
        fill(0);
        rect(this.xPos, this.yPos, this.w, this.h);
        fill(255);
        text(this.text, xPos + 40, yPos + 40);
    }
    boolean erKnapTrykket() {
        return Tryk;

    }
    void registrerKlik(float xin, float yin) {

            if (xin > xPos && xin < xPos + w && yin < yPos + h && yin > yPos) {
                Tryk = true;

            }
}

  
}
