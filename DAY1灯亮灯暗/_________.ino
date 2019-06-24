void setup() {
  // put your setup code here, to run once:
  for(int i=2;i<=7;i++){
    pinMode(i,OUTPUT); 
  }
}

void loop() {
  // put your main code here, to run repeatedly: 
  for(int x=2;x<=7;x++){
digitalWrite(x,HIGH);
delay(500);
  }
   for(int x=2;x<=7;x++){
digitalWrite(x,LOW);
delay(500);
     }
  for(int x=2;x<=7;x++){
digitalWrite(x,HIGH);
} 
delay(1000);
  for(int x=2;x<=7;x++){
digitalWrite(x,LOW);
}  
 delay(1000);      
}
