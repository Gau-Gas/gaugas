#include "SIM900.h"

#include <SoftwareSerial.h>

#include "sms.h"

SMSGSM sms;

char number[]="9036892264";

char message[180];

char pos;

char *p;

void setup()

{

Serial.begin(9600);

if (gsm.begin(2400))

Serial.println("\nstatus=READY");

else Serial.println("\nstatus=IDLE");
pinMode(13,OUTPUT);
};

void loop()

{
  pos=sms.IsSMSPresent(SMS_UNREAD);
  Serial.println((int)pos);
  if((pos == 0)&&!(pos=sms.IsSMSPresent(SMS_READ)))
    {
      Serial.println("ON");

    }

  else if(pos==1)
    {
      message[0]='\0';

      sms.GetSMS((int)pos,number,message,180);

      p=strstr(message,"LOCK");

      if(p)
      {

            Serial.println("off");
      }
       else 
       {
        Serial.println("on");
        deleteSMS(); 
       }

    }

  else if(pos==2)
    {
        message[0]='\0';

        sms.GetSMS((int)pos,number,message,180);

        p=strstr(message,"OPEN");  

        if(p)
        {
            Serial.println("ON");

            deleteSMS();

        }
        else
        {
           Serial.println("off");
           sms.DeleteSMS(2);
        }

    }

};


void deleteSMS()
{
  sms.DeleteSMS(1);
  sms.DeleteSMS(2);
}
