#include <Servo.h>  // Include Arduino Servo library
#include <L298NX2.h> // Include L298NX2 library

Servo servo;  // Create a Servo object

const int SERVOPIN = A1;
//const int EN_A = 9;
const int IN1_A = 8;
const int IN2_A = 7;

//const int EN_B = 10;
const int IN3_B = 6;
const int IN4_B = 5;

L298NX2 motors(IN1_A, IN2_A, IN3_B, IN4_B);

int servoAngle = 90;  // Tracks servo position in degrees
int val = 0;  // Tracks incoming value from Serial port
int move = 1;

void setup() {
  servo.attach(SERVOPIN); // Attach the servo to the specified pin
  Serial.begin(9600); // Start serial communication at 9600 bps
  while (!Serial) {
    // Wait for serial port to connect. Needed for native USB port only
  }
  // motors.setSpeedA(20);
  // motors.setSpeedB(20);
  //motors.setSpeedA(0);
 // motors.setSpeedB(0);

}

void loop() {
   if (Serial.available()) { // If data is available to read
    val = Serial.read(); // Read it and store it in val
    //val = 0;
    if (val == '1') {
      //motors.setSpeedA(50);
      motors.forwardA(); // Move motors forward
      motors.backwardB();
      servo.write(servoAngle);
      //Serial.println(val);
      //Serial.println(move);
    } else if (val == '0') {
      //motors.setSpeedA(255);
      motors.backwardA(); //Move motors backward
      motors.forwardB();
      servo.write(0);
      //Serial.print(val);
      //Serial.println(move); 
    } else {  
      motors.stop(); // Stop motors
     // Serial.println(val);
      //Serial.println(move);
    }
  }
}
   //if (val >= 0 && val <= 180) {
   // servo.write(val); // Position the servo
 //   delay(5);
  //} else if (val == 255) {
    // If val is 255, perform a motor sweep
    //for (angle = 0; angle <= 180; angle++) {
    //  servo.write(servoAngle);
    //  delay(15);
   // }
    //for (angle = 180; angle >= 0; angle--) {
     // servo.write(angle);
     // delay(15);
    //}
    //val = 0; // Reset val
  //} 
//}