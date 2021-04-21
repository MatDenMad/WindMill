
float kW;

void effekt() {
  if ((vind>0) && (vind<=4)) { 
    kW = 0;
  } else if ((vind>4) && (vind<=7.5)) { 
    kW =((5.1*pow(vind, 2) - (35.45*vind) + 60.16));
  } else if ((vind>7.5) && (vind<=13)) { 
    kW = ((79.25*vind) - 524.15);
  } else if ((vind>13) && (vind<=15)) { 
    kW = ((50.5*vind) - 147.7);
  } else if ((vind>16) && (vind<=19)) { 
    kW = 610;
  } else if ((vind>19) && (vind<25)) { 
    kW = ((-5.93*vind) + 723.31);
  }
}

void drawEffektmaaler() {
  
  float kWTotal = (kW * float(millNumber));
  float kWhAA = (((((kW*3153600)/3600)*float(millNumber))));
  float aktiveHuse = ((kWhAA)/4000);
  
  int rkWTotal = round(kWTotal);
  String rkWTotalT = nfc(rkWTotal);
  
  int rkW = round(kW);
  String rkWT = nfc(rkW);
  
  int raktiveHuse = round(aktiveHuse);
  int rkWhAA = round(kWhAA);
  String rkWhAAT = nfc(rkWhAA);
  
  fill(51);
  rect(375, 450, 250, 100);
  fill(255,150); //fill(rgb, grad af transparans)
  rect(50,25,267,100);
  
  noFill();

  textSize(15);
  fill(51);
  text("Årlig produktion af kWh",52,42);
  text("Antal huse det årligt kunne forsynes",52,100);
  text(rkWhAAT+" kWh",52,65);
  text(raktiveHuse+" huse",52,120);
  
  
  noFill();
  fill(255);
  text("Effet pr. vindmølle:", 435, 470);
  text("Totale effekt for vindmøller:", 400, 510);
  text(rkWT+"kW", 475, 490);
  text(rkWTotalT+"kW", 475, 530);
  
  
  
}
