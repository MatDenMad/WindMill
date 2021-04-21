class faktaBoks {

boolean open;
float xPos, yPos;

int height = 20;
int width = 20; 

faktaBoks(boolean openClose, float x, float y){


  open = openClose;
  xPos = x;
  yPos = y;  

}

void setBoks(boolean o){

  open = o;
  
}


boolean isBoksOpen (){
  return open;
}


void drawFaktaBoks(){

if (open){
fill(255,150);
rect(xPos,yPos,267,200);
rect(xPos,yPos,width,height);

stroke(255,0,100);
line(52,132,52+16,132+16);
line(52+16,132,52,132+16);
stroke(0,0,0);


fill(0);
textSize(17);
text("Vindhastigheder i Danmark:",73,148);
textSize(14);
text("* GNS. vindstyrke i DK er 5.8 m/s",52,170);
text("* Skagen fyr, Gedser og Hvide Sande ligger omkring 7-7,8 m/s",52,180,265,200);
text("* Antal døgn med hård vind, 10,8 - 13,8 m/s, er over 170 døgn ved Skagen, men kun 30 døgn inde i landet.",52,230,265,350);

  

} else {
 fill(255,150);
 rect(xPos,yPos,width,height);
 textSize(20);
 fill(0);
 text("i",xPos+8,yPos+18);
 }

}
  
  
boolean isBoksClicked (float x, float y) {

  if ((x>xPos) && (x<xPos+width)&&(y>yPos)&&(y<yPos+height))
  return true;
  
  else 
  return false;
 

}
  

}
