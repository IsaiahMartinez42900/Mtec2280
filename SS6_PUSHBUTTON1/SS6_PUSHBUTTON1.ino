const int buttonPin = 2;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 9;
const int LED6 = 8;

int ButtonState = 0;


void setup() {
  
pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);
pinMode(LED5, OUTPUT);
pinMode(LED6, OUTPUT);

pinMode(buttonPin, INPUT);
}

void loop() {
  
ButtonState = digitalRead(buttonPin);

if (ButtonState == 1) {
  digitalWrite(LED1, HIGH);
  digitalWrite(LED6, HIGH);
  delay(100);

  digitalWrite(LED5, HIGH);
  digitalWrite(LED6, LOW);
  delay(200);

  digitalWrite(LED1, LOW);
  digitalWrite(LED3, HIGH);
  delay(100);

  analogWrite(LED2, HIGH);
  digitalWrite(LED4, HIGH);
  delay(300);

  analogWrite(LED4, HIGH);
  delay(400);
  digitalWrite(LED1, HIGH);
  delay(200);
  analogWrite(LED2, HIGH);

  digitalWrite(LED6, HIGH);
  digitalWrite(LED3, LOW);
  delay(100);

  digitalWrite(LED5, LOW);
  digitalWrite(LED2, LOW);
  delay(100);

  digitalWrite(LED2, HIGH);
  digitalWrite(LED1, HIGH);
  delay(100);

  digitalWrite(LED2, LOW);
  digitalWrite(LED6, LOW);
  delay(300);


} else {
   analogWrite(LED1, LOW); //this led is high from the if condition previous so i just reverted it to off
  
  }

}
