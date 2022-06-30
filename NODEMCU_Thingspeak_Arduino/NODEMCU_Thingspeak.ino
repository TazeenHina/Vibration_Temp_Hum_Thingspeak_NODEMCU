#include <ESP8266WiFi.h>
#include "ThingSpeak.h"
#include "DHT.h"        
#define DHTTYPE DHT11 
#define dht_dpin 4

DHT dht(dht_dpin, DHTTYPE); 


const char *ssid =  "My mobile";     // replace with your wifi ssid and wpa2 key
const char *pass =  "12345678";
const char *apiKey = "PSYLGFPSS28K6TBZ";
unsigned long myChannelNumber = 1;
float vibration;
WiFiClient client;
 
void setup() 
{
       Serial.begin(9600);
       delay(10);
       dht.begin();
       Serial.println("Connecting to ");
       Serial.println(ssid); 
       WiFi.begin(ssid, pass); 
       while (WiFi.status() != WL_CONNECTED) 
          {
            delay(500);
            Serial.print(".");
          }
      Serial.println("");
      Serial.println("WiFi connected"); 
      ThingSpeak.begin(client);  
}
 
void loop() 
{ 
  vibration= analogRead(A0);
  vibration=vibration/4;
  float h = dht.readHumidity();
  float t = dht.readTemperature();

  ThingSpeak.setField(1, vibration);
  ThingSpeak.setField(2, h);
  ThingSpeak.setField(3, t);

  int x= ThingSpeak.writeFields(1, apiKey);

  
  if(x == 200)
  {
  Serial.println("Channel update successful.");
  Serial.print("Vibration:");
  Serial.println(vibration);
  Serial.print("Humidity:");
  Serial.println(h);
  Serial.print("Temperature:");
  Serial.println(t);
  }
else
{
  Serial.println("Problem updating channel. HTTP error code " + String(x));
}
delay(1000 * 15);
}
