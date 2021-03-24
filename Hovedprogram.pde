import controlP5.*;
ControlP5 cp5;

// hej hej

void setup() {
  size(1000, 600);
  cp5=new ControlP5(this);
  cp5.addSlider("vind").setPosition(100, 50).setRange(0, 25).setHeight(50);
  cp5.addButton("up").setPosition(50, 50).setSize(40, 20);
  cp5.addButton("down").setPosition(50, 80).setSize(40, 20);
}

float speed;
int millNumber;

Windmill Mill1 = new Windmill(200, 210, speed);
Windmill Mill2 = new Windmill(500, 310, speed);
Windmill Mill3 = new Windmill(800, 210, speed);

void draw() {
  background(255);
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
}

void vind() { //Her skal Mathias lave funktionen for sammenhængen mellem vindstyrke(x) og rotation(y)
  float vind = cp5.get(Slider.class, "vind").getValue();
  vind = vind/5;
  Mill1.setSpeed(vind);
  Mill2.setSpeed(vind);
  Mill3.setSpeed(vind);
}

void up() {
  millNumber ++;
}

void down() {
  millNumber --;
}
