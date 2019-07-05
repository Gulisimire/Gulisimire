import processing.serial.*;
Serial port;

int y, mo, d, h, m, s; 
PFont myFont;

void setup() {
   port=new Serial(this,"COM3",9600); 
  size(300, 300);
  background(124, 180, 95);
}

void draw() {
  background(124, 180, 95);
  s = second();   
  m = minute();   
  h = hour();     
  d = day();     
  mo = month();  
  y = year();     

  myFont=createFont("FFScala", 18);   
  myClockDraw();
}

void myClockDraw() {
  translate(width/2, height/2);  
  fill(255);  
  ellipse(0, 0, 200, 200);
  stroke(0);      
  textFont(myFont); 
  fill(0);
  text("12", -10, -75);
  text("3", 78, 6);
  text("6", -7, 88);
  text("9", -88, 6);
  text(y+"-"+mo+"-"+d, -40, -23);  
  for (int i=1; i<=60; i++) {
    pushMatrix();
    rotate(PI*2.0*i/60.0);  
    stroke(0);
    if (i%15==0) {
      strokeWeight(3);
      line(0, -90, 0, -100);
    } else if ( i%5 ==0) {
      strokeWeight(2);
      line(0, -92, 0, -100);
    } else {
      strokeWeight(1);
      line(0, -95, 0, -100);
    }
    popMatrix();
  }
  pushMatrix();   
  rotate(PI*2*s/60+PI);   
  stroke(200, 0, 0);  
  strokeWeight(1);
  line(0, 0, 0, 90);     
  popMatrix();

  pushMatrix();
  rotate(PI*2*m/60+PI);
  stroke(0);
  strokeWeight(3);
  line(0, 0, 0, 70);    
  popMatrix();

  pushMatrix();
  rotate(PI*2*h/12+PI);
  stroke(0);
  strokeWeight(5);
  line(0, 0, 0, 50);
  popMatrix();
  
  //clock function
  if(h==13&&m>=26&&m<27){
   port.write("b");

}
  else{
    port.write("a");
  }
}
    
