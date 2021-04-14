import controlP5.*;
//vi importerer et "library", og stjernen betyder at det er hele bilbiotektet jeg medtager.
ControlP5 cp5;
//jeg deklererer min variabel (cp5) af datatypen "ControlP5"
PImage img;

void setup() {
  cp5=new ControlP5(this);
  cp5.addSlider("vind").setPosition(870, 540).setRange(0, 25).setHeight(50);
  cp5.addButton("up").setPosition(820, 540).setSize(40, 20);
  cp5.addButton("down").setPosition(820, 570).setSize(40, 20);
  img = loadImage("Baggrund.png");
  img.resize(1000, 600);
}

void settings() {
  size(1000, 600);
}

float vind;
float speed;
int millNumber;

Windmill Mill1 = new Windmill(600, 300, speed);
Windmill Mill2 = new Windmill(675, 375, speed);
Windmill Mill3 = new Windmill(750, 300, speed);
Windmill Mill4 = new Windmill(825, 375, speed);
Windmill Mill5 = new Windmill(900, 300, speed);

sky sky1 = new sky(50, 200, speed);
sky sky2 = new sky(300, 100, speed);
sky sky3 = new sky(550, 180, speed);
sky sky4 = new sky(700, 70, speed);
sky sky5 = new sky(900, 150, speed);

void draw() {
  background(img);
  fill(205);
  if (millNumber == 1) {
    Mill1.move();
  }
  if (millNumber == 2) {
    Mill1.move();
    Mill2.move();
  }
  if (millNumber == 3) {
    Mill1.move();
    Mill2.move();
    Mill3.move();
  }
  if (millNumber == 4) {
    Mill1.move();
    Mill2.move();
    Mill3.move();
    Mill4.move();
  }
  if (millNumber == 5) {
    Mill1.move();
    Mill2.move();
    Mill3.move();
    Mill4.move();
    Mill5.move();
  }

  sky1.displaySky();
  sky2.displaySky();
  sky3.displaySky();
  sky4.displaySky();
  sky5.displaySky();
}

void vind() { //Her skal Mathias lave funktionen for sammenhængen mellem vindstyrke(x) og rotation(y)
  vind = cp5.get(Slider.class, "vind").getValue();
  vind = vind/5;
  Mill1.setSpeed(vind);
  Mill2.setSpeed(vind);
  Mill3.setSpeed(vind);
  Mill4.setSpeed(vind);
  Mill5.setSpeed(vind);
  sky1.setSpeed(vind);
  sky2.setSpeed(vind);
  sky3.setSpeed(vind);
  sky4.setSpeed(vind);
  sky5.setSpeed(vind);
}

void up() {
  millNumber ++;
  if (millNumber >= 5) {
    millNumber = 5;
  }
}

void down() {
  millNumber --;
  if (millNumber <= 0) {
    millNumber = 0;
  }
}
