// Define motor control pins
const int ENA = 9;
const int IN1 = 8;
const int IN2 = 7;
const int IN3 = 6;
const int IN4 = 5;

// Define Bluetooth control pins
const int RX = 2;
const int TX = 3;

void setup() {
  // Set motor control pins as output
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3,OUTPUT);
  pinMode(IN4, OUTPUT);

  // Set Bluetooth control pins as input/output
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    char command = Serial.read();

    if (command == 'F') {
      // Move forward
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
        digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 255); // Full speed
    }
    else if (command == 'B') {
      // Move backward
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
        digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
      analogWrite(ENA, 255); // Full speed
    }
    else if (command == 'S') {
      // Stop
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, LOW);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 0); // Stop motor
    }
    else if (command == 'R') {
      // Turn right
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
        digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
      analogWrite(ENA, 150); // Half speed
    }
    else if (command == 'L') {
      // Turn left
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
      digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 150); // Half speed
    }
  }

  // Control with arrow keys
  if (Serial.available()) {
    char arrow = Serial.read();

    if (arrow == 'A') {
      // Turn left
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
       digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 150); // Half speed
    }
    else if (arrow == 'D') {
      // Turn right
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
      analogWrite(ENA, 150); // Half speed
    }
    else if (arrow == 'W') {
      // Move forward
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
      digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 255); // Full speed
    }
    else if (arrow == 'S') {
      // Move backward
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
      analogWrite(ENA, 255); // Full speed
    }
    else if (arrow == 'X') {
      // Stop
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, LOW);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 0); // Stop motor
    }
  }
  
  // Control with voice commands
  if (Serial.available()) {
    String voice = Serial.readStringUntil('\n');

    if (voice.indexOf("forward") >= 0) {
      // Move forward
      digitalWrite(IN1, HIGH);
      digitalWrite(IN2, LOW);
       digitalWrite(IN3, HIGH);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 255); // Full speed
    }
    else if (voice.indexOf("backward") >= 0) {
      // Move backward
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, HIGH);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, HIGH);
      analogWrite(ENA, 255); // Full speed
    }
    else if (voice.indexOf("stop") >= 0) {
      // Stop
      digitalWrite(IN1, LOW);
      digitalWrite(IN2, LOW);
      digitalWrite(IN3, LOW);
      digitalWrite(IN4, LOW);
      analogWrite(ENA, 0);
    }
  }
}   
