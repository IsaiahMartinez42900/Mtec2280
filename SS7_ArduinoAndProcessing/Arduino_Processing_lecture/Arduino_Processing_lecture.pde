import processing.serial.*;

Serial myPort;
int val = 0;

void setup() {
  size(700, 700);
  textAlign(CENTER);
  textSize(64);
  printArray(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 115200);
}
void draw() {
  if (myPort.available() > 0) {
    val = myPort.read();
  
  background(255);
  
  textSize(50);
  text("Guess the color", width/2, 100);
  }
if (val >= 1 && val <= 59) {
      fill(random(255), random(255), random(255));
      ellipse(width/2, 280, val, val); 
} else if (val >= 60 && val <= 100) {
      ellipse(width/2, 280, val, val);
} else if (val >= 101 && val <= 190) {
      fill(random(255), random(255), random(255));
      rect(290, 200, val, val);
} else if (val >= 190 && val <= 235) {
      rect(290, 200, val, val);
} else if (val >= 235 && val <= 255){
  background(255);
  text("You probably lost", width/2, 100);
}
}
