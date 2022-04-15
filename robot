int motor1pin1 = 2;
int motor1pin2 = 3;

int motor2pin1 = 5;
int motor2pin2 = 4;
const int trigger_pin = 8;
const int echo_pin = 9;

int sure;
int mesafe;

void motor1ileri()
{
  digitalWrite(motor1pin1, HIGH);
  digitalWrite(motor1pin2, LOW);
}
void motor1geri()
{
  digitalWrite(motor1pin1, LOW);
  digitalWrite(motor1pin2, HIGH);
}
void motor2ileri()
{
  digitalWrite(motor2pin1, HIGH);
  digitalWrite(motor2pin2, LOW);
}
void motor2geri()
{
  digitalWrite(motor2pin1, LOW);
  digitalWrite(motor2pin2, HIGH);
}
void ileri(){
  motor1ileri();
  motor2ileri();
}
void geri(){
  motor1geri();
  motor2geri();
}
void dur(){
  digitalWrite(motor1pin1, LOW);
  digitalWrite(motor1pin2, LOW);
  digitalWrite(motor2pin1, LOW);
  digitalWrite(motor2pin2, LOW);
}
void sag(){
  motor1ileri();
  motor2geri();
}
void sol(){
  motor1geri();
  motor2ileri();
}

void setup() 
{
  pinMode(trigger_pin, OUTPUT);
  pinMode(echo_pin, INPUT);

  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(motor1pin1, OUTPUT);
  pinMode(motor1pin2, OUTPUT);
  pinMode(motor2pin1, OUTPUT);
  pinMode(motor2pin2, OUTPUT);
}

void loop() {
   digitalWrite(trigger_pin, HIGH);
  delayMicroseconds(1000);
  digitalWrite(trigger_pin, LOW);
  sure = pulseIn(echo_pin, HIGH);
  mesafe = (sure/2) / 29.1;

  Serial.print("Mesafe = ");
  Serial.println(mesafe);
if (mesafe <= 15) //mesafe 10 cm den kısaysa aşağdaki işlemler gerçekleşir.
{
  dur();
}
else
{
  ileri();
}
}
