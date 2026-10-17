#include "DHT.h"

#define DHTPIN 2
#define DHTTYPE DHT11

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  delay(1000);
  dht.begin();
}

void loop() {
  delay(5000);

  float f = dht.readTemperature(true);

  if (!isnan(f)) {
    Serial.println(f);
  }
}
