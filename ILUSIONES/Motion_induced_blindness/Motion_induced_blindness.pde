
float rot =360.0;
String plus;
void setup() {
  size(700, 600);  
  noStroke();
  plus="+";
  for(int i=0;i<12;i++){
    plus+=" +";
  }
}

void draw(){  
  background(0);
  translate(width/2, height/2);
  draw_cross();
  
  
  fill(0,255,0);
  ellipse(0, 0, 13, 13);
  draw_yellow_dots();
}

void draw_yellow_dots(){
  int coo=80;
  int size=8;
  fill(255,255,0);
  ellipse(coo, -coo, size, size);
  ellipse(-coo, -coo, size, size);
  ellipse(-coo, coo, size, size);
  ellipse(coo, coo, size, size);
}


void draw_cross(){
  pushMatrix();    
    rot-=3;
    if (rot < 0) rot = 360;
    rotate(radians(rot));
    
    fill(10,0,255);
    
    textSize(40);
    textAlign(CENTER, TOP);
    rectMode(CORNERS);
    int rows=-325;
    for(int i=0; i<11;i++){
      text(plus, 0, rows);
      rows+=60;
    }
  popMatrix();
  rotate(0);
}