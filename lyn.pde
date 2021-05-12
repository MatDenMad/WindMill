class lyn {


void drawLyn(int xPos, int yPos, int r){

int w = 5;
int h = 12;
  
noStroke();
fill(255,247,0);

/*
rect(xPos+0,yPos+50,w,h);

triangle(xPos+0,yPos+50,xPos+10,yPos+50,xPos+10,yPos+25); 

triangle(xPos+w,yPos+50+h,xPos+w-10,yPos+50+h,xPos+w-10,yPos+50+h+25);
*/

triangle(xPos-r,yPos-r,xPos+w,yPos-r,xPos-r,yPos+h);
triangle(xPos+r,yPos+r,xPos-w,yPos+r,xPos+r,yPos-h);

stroke(55);


}
}

  
  
