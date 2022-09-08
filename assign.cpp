#include<Arduino.h>
#include<Wire.h>
int s0,s1,s2,s3,y;
void setup()
{
 pinMode(2,INPUT);
 pinMode(3,INPUT);
 pinMode(4,INPUT);
 pinMode(5,INPUT);
 pinMode(6,OUTPUT);
}
void loop()
{
 s0=digitalRead(2);
 s1=digitalRead(3);
 s2=digitalRead(4);
 s3=digitalRead(5);
 y=(s3&&s2&&!s1)||(!s3&&!s1&&s0)||(!s3&&s2&&s1)||(s3&&s1&&s0);
 digitalWrite(6,y);
}
