
void storLedningHojre() {
  fill(5);
  rect(625, 545, 130, 10);
}

void storLedningVenstre() {
  fill(5);
  rect(275, 545, 100, 10);
}

void storLedningLodret() {
  fill(5);
  rect(745, 545, 10, -100);
}

void ledning1() {
  //Når Control CP5 er aktiveret, kan processing åbenbart kun tegne line, når stroke(0).
  stroke(0);
  strokeWeight(5);
  line(600,375,750,450);
  strokeWeight(1);
}

void ledning2() {
  stroke(0);
  strokeWeight(5);
  line(675,450,750,450);
  strokeWeight(1);
}

void ledning3() {
  stroke(0);
  strokeWeight(5);
  line(750,375,750,450);
  strokeWeight(1);
}

void ledning4() {
  stroke(0);
  strokeWeight(5);
  line(825,450,750,450);
  strokeWeight(1);
}

void ledning5() {
  stroke(0);
  strokeWeight(5);
  line(900,375,750,450);
  strokeWeight(1);
}
