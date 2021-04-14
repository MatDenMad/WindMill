class sky {
  float ypos = 100;
  float xpos = -100;  
  float speed;

  sky(float x, float y, float s) {
    ypos=y;
    xpos=x;
    speed=s;
  }

  void displaySky() {
    xpos = xpos + (speed/2);
    if (xpos > width+15) {
      xpos = -95;
    }
    stroke(255);
    fill(255);
    ellipse(xpos, ypos, 30, 30);
    ellipse(xpos+80, ypos, 30, 30);
    ellipse(xpos+40, ypos-20, 30, 30);
    ellipse(xpos+15, ypos-15, 30, 30);
    ellipse(xpos+15+50, ypos-15, 30, 30);
    rect(xpos, ypos-15, 80, 30);
    stroke(55);
  }

  void setSpeed(float s) {
    this.speed = s;
  }
}
