 boolean movedX = false;
boolean movedY = false;
int newX=0;
int newY=0;
int oldX=0;
int oldY=0;
float angle=0;
color[] colarray = new color[20];
int col;
void setup() {
    size(1920, 1080);
        background(0, 0, 0);
    colarray[0] = color(#430753);
    colarray[1] = color(#471965);
    colarray[2] = color(#482975);
    colarray[3] = color(#45397F);
    colarray[4] = color(#414986);
    colarray[5] = color(#3A578A);
    colarray[6] = color(#35648B);
    colarray[7] = color(#30708D);
    colarray[8] = color(#2D7D8D);
     colarray[9] = color(#2A8A8C);
    colarray[10] = color(#28968B);
    colarray[11] = color(#2AA287);
    colarray[12] = color(#32AE80);
    colarray[13] = color(#43BA77);
    colarray[14] = color(#5AC46B);
    colarray[15] = color(#76CE5C);
    colarray[16] = color(#97D64C);
    colarray[17] = color(#B9DC3D);
    colarray[18] = color(#DCE137);
    colarray[19] = color(#FCE540);
    colorMode(HSB);

}
 
void draw() {
       fill(0,0,100,2);

rect(0,0,width, height);

// if(mousePressed==true){
      for(int j = 0; j < 20; j++){
  col = colarray[j];
      fill(col);
     

    }
    display();
    frameRate(600);
//for(int j = 0; j<mouseX; j++){
//          fill(j/2,j/5,j/2);
//}

 
}


    void display() {

    translate(mouseX, mouseY);
  rotate(angle);
  fill(255);

    angle +=0.1;
          col = colarray[0];
      fill(col);
     //  for(int j = 0; j < mouseX%20; j++){
      println(width-width/17);
if(mouseX <= width){
  col = colarray[ 0];
      fill(col);
}

 if(mouseX <= width/20 ){
  col = colarray[ 1];
      fill(col);
}
if(mouseX >= width/20 && mouseX <= (width/20)*2){
  col = colarray[ 2];
      fill(col);
}
if(mouseX >= width/20*2 && mouseX <= (width/20)*3){
  col = colarray[ 3];
      fill(col);
}

if(mouseX >= width/20*3 && mouseX <= (width/20)*4){
  col = colarray[ 4];
      fill(col);
}
if(mouseX >= width/20*4 && mouseX <= (width/20)*5){
  col = colarray[ 5];
      fill(col);
}

if(mouseX >= width/20*5 && mouseX <= (width/20)*6){
  col = colarray[ 6];
      fill(col);
}
if(mouseX >= width/20*6 && mouseX <= (width/20)*7){
  col = colarray[ 7];
      fill(col);
}

if(mouseX >= width/20*7 && mouseX <= (width/20)*8){
  col = colarray[ 8];
      fill(col);
}
if(mouseX >= width/20*8 && mouseX <= (width/20)*9){
  col = colarray[ 9];
      fill(col);
}

if(mouseX >= width/20*9 && mouseX <= (width/20)*10){
  col = colarray[ 10];
      fill(col);
}
if(mouseX >= width/20*10 && mouseX <= (width/20)*11){
  col = colarray[ 11];
      fill(col);
}

if(mouseX >= width/20*11 && mouseX <= (width/20)*12){
  col = colarray[ 12];
      fill(col);
}
if(mouseX >= width/20*12 && mouseX <= (width/20)*13){
  col = colarray[ 13];
      fill(col);
}
if(mouseX >= width/20*13 && mouseX <= (width/20)*14){
  col = colarray[ 14];
      fill(col);
}
if(mouseX >= width/20*14 && mouseX <= (width/20)*15){
  col = colarray[ 15];
      fill(col);
}
if(mouseX >= width/20*15 && mouseX <= (width/20)*16){
  col = colarray[ 16];
      fill(col);
}
if(mouseX >= width/20*16 && mouseX <= (width/20)*17){
  col = colarray[ 17];
      fill(col);
}
if(mouseX >= width/20*17 && mouseX <= (width/20)*18){
  col = colarray[ 18];
      fill(col);
}
if(mouseX >= width/20*18 && mouseX <= (width/20)*19){
  col = colarray[ 19];
      fill(col);
}
if(mouseX >= width/20*19 && mouseX <= (width/20)*20){
  col = colarray[ 20];
      fill(col);
}





 stroke(0);
    
for(int i = 0; i< mouseY; i++){

    
    rect(-i/16,-i/16, i/8,i/8,i%10);

  }

 
  
    
       
    }
   
        




