 boolean movedX = false;
boolean movedY = false;
int newX=0;
int newY=0;
int oldX=0;
int oldY=0;
float angle=0;

void setup() {
    size(800, 800);
        background(0, 0, 0);

}
 
void draw() {
// if(mousePressed==true){
    
    display();
    frameRate(600);
for(int j = 0; j<mouseX; j++){
          fill(j/2,j/5,j/2);
}
}


    void display() {

    translate(mouseX, mouseY);
  rotate(angle);
  fill(255);
  stroke(0,0,0);
    angle +=0.1;
for(int i = 0; i< mouseY; i++){
 
for(int j = 0; j< mouseX; j++){
    
    fill(j/10,j/5,j/2,j/4);
//   stroke(i/10,i/5,i/2,i/4);

  }
    rect(-25, -25, i/5,i/5);

  }

 
  
     
       
    }
   
        




