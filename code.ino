#include <StopWatch.h>
#include "SIM900.h"
#include <SoftwareSerial.h>
#include "sms.h"
#include "inetGSM.h"
SMSGSM sms;



int numdata;
boolean started=false;
char smsbuffer[160];
char n[20];
 
int flag=0;

StopWatch MySW;
StopWatch SWarray[5];

float current=0;
const int currentPin = A0;
const unsigned long sampleTime = 100000UL;                           // sample over 100ms, it is an exact number of cycles for both 50Hz and 60Hz mains
const unsigned long numSamples = 1000UL;                               // choose the number of samples to divide sampleTime exactly, but low enough for the ADC to keep up
const unsigned long sampleInterval = sampleTime/numSamples;  // the sampling interval, must be longer than then ADC conversion time
const float adc_zero = 511.1234567;                                                     // relative digital zero of the arudino input from ACS712 (could make this a variable and auto-adjust it)
char message_temp[255];
void setup()
{
Serial.begin(9600);
pinMode(13,OUTPUT);
 
};

void loop()
{
 if(current >=0.025)
  {
    digitalWrite(13,HIGH);
  flag=1;
delay(1000);
//x=message_temp;
  MySW.start();
 }
  else
  {
    sprintf(message_temp,"JITg@ug@$,1,%d",MySW.elapsed());
    MySW.stop();
    digitalWrite(13,LOW);
    
    //Serial.println(message_temp);
    if(flag==1)
    {
      Send();
      flag=0;
         MySW.reset();
    }
  }
  
CurrentSense();
Serial.println(current,6);
delay(1000);
};

void CurrentSense()
{
 unsigned long currentAcc = 0;
 unsigned int count = 0;
 unsigned long prevMicros = micros() - sampleInterval ;
 while (count < numSamples)
 {
   if (micros() - prevMicros >= sampleInterval)
   {
     int adc_raw = analogRead(currentPin) - adc_zero;
     currentAcc += (unsigned long)(adc_raw * adc_raw);
     ++count;
     prevMicros += sampleInterval;
   }
 }
 
 float rms = sqrt((float)currentAcc/(float)numSamples) * (50 / 1024.0);
//rms=rms-0.02;
//if (rms<0.20)
//{
//rms=0;
//}

current=rms;
}

void Send()
{

  Serial.println("GSM Shield testing.");
  //Start configuration of shield with baudrate.
  //For http uses is raccomanded to use 4800 or slower.
  if (gsm.begin(2400)){
    Serial.println("\nstatus=READY");
    started=true;  
  }
  else Serial.println("\nstatus=IDLE");
  
  if(started){
    //Enable this two lines if you want to send an SMS.
    Serial.println(message_temp);
    sms.SendSMS("9900188301", message_temp);
      Serial.println("\nSMS sent OK");
  }
  

}


