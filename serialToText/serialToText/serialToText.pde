import processing.serial.*; //Serial library
Serial myPort;        // The serial port

void setup () {
  size(130, 100); // set the window size:       
  println(Serial.list());  // List all the available serial ports
  myPort = new Serial(this, Serial.list()[0], 9600); // I know that the first port in the serial list on my mac
  myPort.bufferUntil('\n'); // don't generate a serialEvent() unless you get a newline character
}
void draw () {
}

void serialEvent (Serial myPort) {
  background(0);   
  String inString = myPort.readString(); //Read string from the serial port - coming from arduino
  String[] outputToText = split(inString, ',');
  String pot1 = outputToText[0];
  String pot2 = outputToText[1];
  String pot3 = outputToText[2];
  float pot1int = float(pot1);
  float pot2int = float(pot2);
  float pot3int = float(pot3);
  float pot1Mapped = map(pot1int, 0, 1023, 0, 255);
  float pot2Mapped = map(pot2int, 0, 1023, 0, 255);
  float pot3Mapped = map(pot3int, 0, 1023, 0, 255);
  int pot1intMapped = int(pot1Mapped);
  int pot2intMapped = int(pot2Mapped); 
  int pot3intMapped = int(pot3Mapped);  
  String output = "[{ \"potentiometer\" : " + "\""+pot1intMapped+"\"" + " }"+","+ "{ \"potentiometer\" : " + "\""+pot2intMapped+"\"" + " }"+ "," +"{ \"potentiometer\" : " + "\""+pot3intMapped+"\"" + "}]";
  String [] outputTogether = split(output, '*'); 
  saveStrings("data.json", outputTogether); //Saves the string into a JSON file
}

