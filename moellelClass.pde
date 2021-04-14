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
    triangle(0, 0, -5, 75, 5, 75);
    rotate(radians(frameCount * speed % 360));
    triangle(0, 0, 50, 0, 10, -5);
    triangle(0, 0, -25, 43.3, -0.7, 11.21);
    triangle(0, 0, -25, -43.3, -9.36, -6.21);
    popMatrix();
  }

  void setSpeed(float s) {
    this.speed = s;
  }
}
