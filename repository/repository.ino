#define SensorSol 10
#define SensorOrta 11   // Sensör pinlerini tanımlıyoruz.
#define SensorSag 12

void setup() 
{
  pinMode(SensorSol, INPUT);
  pinMode(SensorOrta, INPUT); //Sensörlerimizi giriş olarak tanımlıyoruz.
  pinMode(SensorSag, INPUT);
  Serial.begin(115200);  //Seri haberleşmeyi başlatıyoruz.
  
}

void loop() 
{
  Serial.print(digitalRead(SensorSol));
  Serial.print(",");
  Serial.print(digitalRead(SensorOrta));
  Serial.print(",");
  Serial.println(digitalRead(SensorOrta));
  delay(100);
}
