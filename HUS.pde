class Hus {

  float x, y;
  boolean lys;

  Hus(int xpos, int ypos) {
    x=xpos;
    y=ypos;
  }


  void setX(float x_) {
    x=x_;
  }

  void setY(float y_) {
    y=y_;
  }


  void setXY(float x_, float y_) {
    y=y_;
    x=x_;
  }
  //getters
  boolean isLightOn() {

    return lys;
  }

  // setters
  void switchLigtOn() {
    lys = true;
  }
  void switchLigtOff() {
    lys = false;
  }

  void drawHus() {
    fill(255, 127, 80);
    rect(x, y, 30, 30);
    fill(165, 42, 42);
    rect(x+19, y+15, 7, 15);
    fill(0);
    rect(x, y-23, 5, 15);
    fill(255, 0, 0);
    triangle(x-5, y, x+35, y, x+15, y-30);
    if (lys) {
      fill(255, 255, 0);
    } else {
      fill(0);
    }
    rect(x+5, y+7, 8, 8);
  }
}
