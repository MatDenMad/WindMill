
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
    else if(vind>25){
    kW = 0;
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
  rect(375, 500, 250, 100);
  noFill();
  rect(50,25,300,100); 
  
  fill(245,245,220);
  rect(322,95,10,10);
  fill(245,0,0);
  triangle(319,95,335,95,327,87);
  fill(55);
  rect(328,100,2,5);
  noFill();

  textSize(15);
  fill(1);
  text("Årlig produktion af kWh",52,42);
  text("Antal huse det årligt kunne forsynes",52,100);
  text(rkWhAAT+" kWh",52,65);
  text(raktiveHuse+" huse",52,120);
  
  
  noFill();
  fill(255);
  text("Effet pr. vindmølle:", 435, 520);
  text("Totale effekt for vindmøller:", 400, 560);
  text(rkWT+"kW", 475, 540);
  text(rkWTotalT+"kW", 475, 580);
  
  
  
}
