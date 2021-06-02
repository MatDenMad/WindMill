import controlP5.*;
//vi importerer et "library", og stjernen betyder at det er hele bilbiotektet jeg medtager.
ControlP5 cp5;
//jeg deklererer min variabel (cp5) af datatypen "ControlP5"
PImage img;

void setup() {
  cp5=new ControlP5(this);
  cp5.addSlider("vind").setPosition(870, 540).setRange(0, 53.5).setHeight(50);
  cp5.addButton("tilfoj").setPosition(820, 540).setSize(40, 20);
  cp5.addButton("fjern").setPosition(820, 570).setSize(40, 20);
  img = loadImage("Baggrund.png");
  img.resize(1000, 600);
}
//MOIN
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

Hus h = new Hus(150, 400);
Hus h2 = new Hus(200, 400);
Hus h3 = new Hus(250, 400);

sky sky1 = new sky(50, 200, speed);
sky sky2 = new sky(300, 100, speed);
sky sky3 = new sky(550, 180, speed);
sky sky4 = new sky(700, 70, speed);
sky sky5 = new sky(900, 150, speed);

lyn L = new lyn();
lyn L2 = new lyn();
lyn L3= new lyn();

faktaBoks B1 = new faktaBoks(false, 50, 130);

void draw() {
  background(img);
  //tegner husene
  h.drawHus();
  h2.drawHus();
  h3.drawHus();
  
  fill(205);
  if (millNumber == 1) {
    Mill1.move();
    ledning1();
  }
  if (millNumber == 2) {
    Mill1.move();
    ledning1();
    Mill2.move();
    ledning2();
  }
  if (millNumber == 3) {
    Mill1.move();
    ledning1();
    Mill2.move();
    ledning2();
    Mill3.move();
    ledning3();
  }
  if (millNumber == 4) {
    Mill1.move();
    ledning1();
    Mill2.move();
    ledning2();
    Mill3.move();
    ledning3();
    Mill4.move();
    ledning4();
  }
  if (millNumber == 5) {
    Mill1.move();
    ledning1();
    Mill2.move();
    ledning2();
    Mill3.move();
    ledning3();
    Mill4.move();
    ledning4();
    Mill5.move();
    ledning5();
  }

  sky1.displaySky();
  sky2.displaySky();
  sky3.displaySky();
  sky4.displaySky();
  sky5.displaySky();

  drawEffektmaaler();
  effekt();
  B1.drawFaktaBoks("Vindhastigheder i Danmark:", "* GNS. vindstyrke i DK er 5.8 m/s.", "* Skagen fyr, Gedser og Hvide Sande ligger omkring 7-7,8 m/s.", "* Antal døgn med hård vind (10,8 - 13,8 m/s), er over 170 døgn ved Skagen, men kun 30 døgn inde i landet.", "*Under orkanen i 2013, var vindstyrken 53,5 m/s.", 267, 230);
  L.drawLyn(235, 37, 1);
  L2.drawLyn(425, 515, 1);
  L3.drawLyn(390, 555, 1);

  noStroke();
  fill(0, 255, 0);
  triangle(795, 545, 815, 545, 805, 533);
  rect(800, 545, 10, 15);
  fill(255, 0, 0); 
  triangle(795, 585, 815, 585, 805, 597);
  rect(800, 570, 10, 15);
  noFill();

  fill(1);
  textSize(16);
  text("Reguler vindstyrken her:", 870, 465, 100, 100);

  storLedningHojre();
  storLedningVenstre();
  storLedningLodret();
}

void vind() { 
  vind = cp5.get(Slider.class, "vind").getValue();
  Mill1.setSpeed(vind/5);
  Mill2.setSpeed(vind/5);
  Mill3.setSpeed(vind/5);
  Mill4.setSpeed(vind/5);
  Mill5.setSpeed(vind/5);
  sky1.setSpeed(vind/5);
  sky2.setSpeed(vind/5);
  sky3.setSpeed(vind/5);
  sky4.setSpeed(vind/5);
  sky5.setSpeed(vind/5);
}

void tilfoj() {
  millNumber ++;
  if (millNumber >= 5) {
    millNumber = 5;
  }
}

void fjern() {
  millNumber --;
  if (millNumber <= 0) {
    millNumber = 0;
  }
}

void mouseClicked() {


  if (B1.isBoksClicked(mouseX, mouseY))
    if (B1.open) {
      B1.setBoks(false);
    } else {
      B1.setBoks(true);
    }
}
