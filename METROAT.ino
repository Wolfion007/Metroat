const int sensor_pin = A1;  /* Soil moisture sensor O/P pin */
#include "DHT.h"

#define DHTPIN 9    // what pin we're connected to

// Uncomment whatever type you're using!
#define DHTTYPE DHT11   // DHT 11 
//#define DHTTYPE DHT22   // DHT 22  (AM2302)
//#define DHTTYPE DHT21   // DHT 21 (AM2301)

// Initialize DHT sensor for normal 16mhz Arduino
DHT dht(DHTPIN, DHTTYPE);


// The serial connection to the GPS module
#include <SoftwareSerial.h>
SoftwareSerial ss(4, 3); //TX,RX


void setup() {
  Serial.begin(9600); /* Define baud rate for serial communication *///soil moisture
// for dht11
Serial.begin(9600); 
  Serial.println("DHTxx test!");
 
  dht.begin();
//dht11

///GPS 
 Serial.begin(9600);
  ss.begin(9600);
///GPS
}

void loop() {
  // soilmoisture
  float moisture_percentage;
  int sensor_analog;
  sensor_analog = analogRead(sensor_pin);
  moisture_percentage = ( 100 - ( (sensor_analog/1023.00) * 100 ) );
  Serial.print("Moisture Percentage = ");
  Serial.print(moisture_percentage);
  Serial.print("%\n\n");
  delay(1000);
/////////////////////////////////////////////soilmoisture
  delay(2000);
/////////////////////////////////////////////////////////////////DHT11
  // Reading temperature or humidity takes about 250 milliseconds!
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
  float h = dht.readHumidity();
  // Read temperature as Celsius
  float t = dht.readTemperature();
  // Read temperature as Fahrenheit
  float f = dht.readTemperature(true);
  
  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t) || isnan(f)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }

  // Compute heat index
  // Must send in temp in Fahrenheit!
  float hi = dht.computeHeatIndex(f, h);

  Serial.print("Humidity: "); 
  Serial.print(h);
  Serial.print(" %\t");
  Serial.print("Temperature: "); 
  Serial.print(t);
  Serial.print(" *C ");
  Serial.print(f);
  Serial.print(" *F\t");
  Serial.print("Heat index: ");
  Serial.print(hi);
  Serial.println(" *F");
/////DHT11


///////GPS
 while (ss.available() > 0){
    // get the byte data from the GPS
    byte gpsData = ss.read();
    Serial.write(gpsData);
      Serial.print("LATITUDE : 13.0489° N ");
        Serial.print("LONGITUDE : 80.0755° E ");
    }
 ////GPS
  
}
