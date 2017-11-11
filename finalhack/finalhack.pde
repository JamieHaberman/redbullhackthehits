boolean movedX = false;
boolean movedY = false;
int newX=0;
int newY=0;
int oldX=0;
int oldY=0;
float angle=0;
color[] colarray = new color[20];
color[] colarray2 = new color[20];
boolean changecolor = false;
int col;
void setup() {
size(1250,800);
background(0, 0, 0);
    colarray[0] = color(#FCF5BB);
    colarray[1] = color(#FCDFA4);
    colarray[2] = color(#FCCD94);
    colarray[3] = color(#FCB07C);
    colarray[4] = color(#FB996E);
    colarray[5] = color(#F98264);
    colarray[6] = color(#F06260);
    colarray[7] = color(#E35267);
    colarray[8] = color(#CF4470);
     colarray[9] = color(#BC3D77);
    colarray[10] = color(#AF397B);
    colarray[11] = color(#95307F);
    colarray[12] = color(#7E2A81);
    colarray[13] = color(#66207E);
    colarray[14] = color(#481B76);
    colarray[15] = color(#4D1C79);
    colarray[16] = color(#3D186F);
    colarray[17] = color(#1A1241);
    colarray[18] = color(#0C0925);
    colarray[19] = color(#000003);
    
    
      colarray2[0] = color(#430753);
    colarray2[1] = color(#471965);
    colarray2[2] = color(#482975);
    colarray2[3] = color(#45397F);
    colarray2[4] = color(#414986);
    colarray2[5] = color(#3A578A);
    colarray2[6] = color(#35648B);
    colarray2[7] = color(#30708D);
    colarray2[8] = color(#2D7D8D);
     colarray2[9] = color(#2A8A8C);
    colarray2[10] = color(#28968B);
    colarray2[11] = color(#2AA287);
    colarray2[12] = color(#32AE80);
    colarray2[13] = color(#43BA77);
    colarray2[14] = color(#5AC46B);
    colarray2[15] = color(#76CE5C);
    colarray2[16] = color(#97D64C);
    colarray2[17] = color(#B9DC3D);
    colarray2[18] = color(#DCE137);
    colarray2[19] = color(#FCE540);
    colorMode(HSB);

}
 
void draw() {
       fill(0,20,20,2);
rect(0,0,width, height);

// if(mousePressed==true){
      for(int j = 0; j < 20; j++){
  col = colarray[j];
      fill(col);
     

    }
   translate(mouseX, mouseY);
        angle +=0.1;

  rotate(angle);
  fill(255);

          col = colarray[0];
      fill(col);
     //  for(int j = 0; j < mouseX%20; j++){
      
 
     if (keyPressed) {
    if (keyCode == 16) {
          //background(0,0,0);
      changecolor=true;

    }  
    if (keyCode == 17) {

//background(0,0,0);
changecolor=false;
    }
       if (keyCode == 18) {
background(0,0,0);

//changecolor=false;
    }
     }
  if(changecolor==true ){
    
   magma();
    }else{
    virdis();

    }

 stroke(0);
    
for(int i = 0; i< mouseY; i++){


    rect(-i/16,-i/16, i/8,i/8,i%10);

  }
noFill();
noStroke();
  rect(frameCount * frameCount % width, 0, 40, height);
 
}
     

//void trail(int x, int y, int w, int h ){
//rect(x,y, w,h);
//}
  
    
    void magma(){
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
    
    }
   void virdis(){
   if(mouseX <= width){
  col = colarray2[ 0];
      fill(col);
}

 if(mouseX <= width/20 ){
  col = colarray2[ 1];
      fill(col);
}
if(mouseX >= width/20 && mouseX <= (width/20)*2){
  col = colarray2[ 2];
      fill(col);
}
if(mouseX >= width/20*2 && mouseX <= (width/20)*3){
  col = colarray2[ 3];
      fill(col);
}

if(mouseX >= width/20*3 && mouseX <= (width/20)*4){
  col = colarray2[ 4];
      fill(col);
}
if(mouseX >= width/20*4 && mouseX <= (width/20)*5){
  col = colarray2[ 5];
      fill(col);
}

if(mouseX >= width/20*5 && mouseX <= (width/20)*6){
  col = colarray2[ 6];
      fill(col);
}
if(mouseX >= width/20*6 && mouseX <= (width/20)*7){
  col = colarray2[ 7];
      fill(col);
}

if(mouseX >= width/20*7 && mouseX <= (width/20)*8){
  col = colarray2[ 8];
      fill(col);
}
if(mouseX >= width/20*8 && mouseX <= (width/20)*9){
  col = colarray2[ 9];
      fill(col);
}

if(mouseX >= width/20*9 && mouseX <= (width/20)*10){
  col = colarray2[ 10];
      fill(col);
}
if(mouseX >= width/20*10 && mouseX <= (width/20)*11){
  col = colarray2[ 11];
      fill(col);
}

if(mouseX >= width/20*11 && mouseX <= (width/20)*12){
  col = colarray2[ 12];
      fill(col);
}
if(mouseX >= width/20*12 && mouseX <= (width/20)*13){
  col = colarray2[ 13];
      fill(col);
}
if(mouseX >= width/20*13 && mouseX <= (width/20)*14){
  col = colarray2[ 14];
      fill(col);
}
if(mouseX >= width/20*14 && mouseX <= (width/20)*15){
  col = colarray2[ 15];
      fill(col);
}
if(mouseX >= width/20*15 && mouseX <= (width/20)*16){
  col = colarray2[ 16];
      fill(col);
}
if(mouseX >= width/20*16 && mouseX <= (width/20)*17){
  col = colarray2[ 17];
      fill(col);
}
if(mouseX >= width/20*17 && mouseX <= (width/20)*18){
  col = colarray2[ 18];
      fill(col);
}
if(mouseX >= width/20*18 && mouseX <= (width/20)*19){
  col = colarray2[ 19];
      fill(col);
}
if(mouseX >= width/20*19 && mouseX <= (width/20)*20){
  col = colarray2[ 20];
      fill(col);
}
   }
        
           
