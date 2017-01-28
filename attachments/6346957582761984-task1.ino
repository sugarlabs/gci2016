int led = 13;
int but1 = 12;
int but2 = 11;
int but3 = 10;
int readBut = 0;

void setup() {
  pinMode(led,OUTPUT);
  pinMode(but1,INPUT);
  pinMode(but2,INPUT);
  pinMode(but3,INPUT);
  
}

void loop() {
  if (digitalRead(but1) == 1) {
    digitalWrite (led,1);
  }
  if (digitalRead(but2) == 1) {
    digitalWrite (led,0);
  }
  if (digitalRead(but3) == 1) {
    digitalWrite (led,1);
    delay (100);
    digitalWrite (led,0);
    delay (100);
  }
}
