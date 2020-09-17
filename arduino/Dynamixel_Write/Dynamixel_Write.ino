#include <DynamixelSerial1.h>

DynamixelClass Dxl(Serial3);

void setup()
{
  // Inicialize the servo at 1Mbps and Pin Control 2
  Dxl.begin(1000000, 2);
  delay(1000);
  Serial.begin(9600);

}
void loop()
{
  Dxl.ledStatus(1, ON);

  Dxl.setEndless(1, ON);
  Dxl.turn(1, RIGTH, 100);
  delay(100);
  Dxl.turn(1, RIGTH, 0);
  

  // Dxl.setEndless(1, OFF);
  // Dxl.moveSpeedRW(1,2000,100);
  // Dxl.action();
  // delay(100);
  
  Dxl.ledStatus(1, OFF);
  delay(1000);
}
