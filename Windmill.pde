class Windmill {

  int xpos;
  int ypos;
  float speed;

  Windmill(int x, int y, float s) {

    xpos=x;
    ypos=y;
    speed=s;
  }

  void move() {
    pushMatrix();
    translate(xpos, ypos);
    triangle(0, 0, -10, 150, 10, 150);
    rotate(radians(frameCount * speed % 360));
    triangle(0, 0, 100, 0, 25, -5);
    triangle(0, 0, -55, -85, -10, -5);
    triangle(0, 0, -55, 85, 0, 10);
    popMatrix();
  }

  void setSpeed(float s) {
    this.speed = s;
  }
}
