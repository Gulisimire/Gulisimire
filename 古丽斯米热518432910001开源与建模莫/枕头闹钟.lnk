
int c=0;
const int TrigPin = 2; 
const int EchoPin = 3; 
float cm; 

int tonePin=8;

void setup()
{
  Serial.begin(9600); 
  pinMode(tonePin,OUTPUT);
  Serial.begin(9600); 
pinMode(TrigPin, OUTPUT); 
pinMode(EchoPin, INPUT); 
pinMode(8,OUTPUT);

}

void loop()
{
  if (Serial.available());
  c=Serial.read();
  if(c==97){
  digitalWrite(8, HIGH);  
  }
  if(c==98){
    digitalWrite(8, LOW); 
  }

digitalWrite(TrigPin, LOW); 
delayMicroseconds(2); 
digitalWrite(TrigPin, HIGH); 
delayMicroseconds(10); 
digitalWrite(TrigPin, LOW); 

cm = pulseIn(EchoPin, HIGH) / 58.8; 
cm = (int(cm * 100.0)) / 100.0;  

if (cm>=1 && cm<=10){
digitalWrite(8, HIGH);

  } 
}
