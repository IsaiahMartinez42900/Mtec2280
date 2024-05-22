import processing.serial.*;

Serial myPort;  // Create object from Serial class

void setup() {
  size(400, 200);  // Set the size of the window
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[2]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  // Draw the control shapes
  fill(0, 255, 0); // Green color for forward
  rect(50, 50, 100, 100);
  fill(255, 0, 0); // Red color for backward
  rect(150, 50, 100, 100);
  fill(150); // Gray color for stop
  rect(250, 50, 100, 100);
}

void mousePressed() {
  // Check if the mouse is clicked inside any of the control shapes
  if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) {
    myPort.write('1'); // Send '1' to the serial port for forward motion
   //println('1');
  } else if (mouseX > 150 && mouseX < 250 && mouseY > 50 && mouseY < 150) {
    myPort.write('0'); // Send '0' to the serial port for backward motion
   //println('0');
  } else if (mouseX > 250 && mouseX < 350 && mouseY > 50 && mouseY < 150) {
    myPort.write('-'); // Send '-1' to the serial port to stop
    //println('-');
   
  }
}
