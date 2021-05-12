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


void drawFaktaBoks(String t1, String t2, String t3, String t4, String t5, int w, int h){

if (open){
noFill();
rect(xPos,yPos,w,h);

rect(xPos,yPos,width,height);


stroke(255,0,100);
line(xPos+2,yPos+2,xPos+18,yPos+18);
line(xPos+18,yPos+2,xPos+2,yPos+18);
stroke(0,0,0);




fill(0);
textSize(17);
text(t1,73,148);
textSize(14);
text(t2,52,170);
text(t3,52,180,265,200);
text(t4,52,230,265,300);
text(t5,52,320,265,370);

  

} else {
 
 noFill();
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
