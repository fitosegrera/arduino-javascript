int pot1 = 1;
int pot2 = 2;
int pot3 = 3;

void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
  pinMode(pot1, INPUT);
  pinMode(pot2, INPUT);
  pinMode(pot3, INPUT);  
}

void loop() {
  int valuePot1 = analogRead(pot1);
  int valuePot2 = analogRead(pot2);
  int valuePot3 = analogRead(pot3);
//  String stringPots = String(valuePot1+valuePot2); 
  // send the value of analog input 0:
  Serial.print(valuePot1);
  Serial.print(",");
  Serial.print(valuePot2);
  Serial.print(",");
  Serial.print(valuePot3);
  Serial.print(",");
  Serial.println();
  // wait a bit for the analog-to-digital converter 
  // to stabilize after the last reading:
  delay(2);
}
