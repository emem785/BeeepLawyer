package com.example.beep_lawyer_3;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.work.Worker;
import androidx.work.WorkerParameters;

import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static android.content.Context.MODE_PRIVATE;
import static com.example.beep_lawyer_3.MainActivity.PHONE;
import static com.example.beep_lawyer_3.MainActivity.SHARED_PREFS;
import static com.example.beep_lawyer_3.MainActivity.TOKEN;

public class UploadWorker extends Worker {
    public static final String TAG = "UploadWorker";
    private FusedLocationProviderClient fusedLocationClient;

    private static final String TAG2 = "shared";

    public  String phone;
    public  String token;

    public UploadWorker(@NonNull Context context, @NonNull WorkerParameters workerParams) {
        super(context, workerParams);
    }

    @NonNull
    @Override
    public Result doWork() {
        sendLocationJob();
        return Result.success();
    }

    private void sendLocationJob() {

        NotificationManager manager = (NotificationManager) getApplicationContext().getSystemService(Context.NOTIFICATION_SERVICE);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel("messages", "Messages", NotificationManager.IMPORTANCE_LOW);
            manager.createNotificationChannel(channel);


        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext(), "messages")
                .setContentText("Open App to stop")
                .setContentTitle("Your Presently On Call")
                .setSmallIcon(R.drawable.logo);

        manager.notify(1, builder.build());

        postLocationToApi();

    }


    private void postLocationToApi() {

        loadData();
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(getApplicationContext());
        fusedLocationClient.getLastLocation().addOnCompleteListener(new OnCompleteListener<Location>() {
            @Override
            public void onComplete(@NonNull Task<Location> task) {
                Location location = task.getResult();
                if (location != null) {

                    Position position = new Position(String.valueOf(location.getLongitude()),String.valueOf(location.getLatitude()));
                    Log.d(TAG, "onComplete: " + location.getLongitude());
                    JsonPlaceHolderApi jsonPlaceHolderApi = RetrofitClientInstance.getRetrofitInstance().create(JsonPlaceHolderApi.class);
                    Call<Position> call = jsonPlaceHolderApi.sendPosition(token,phone,position);

                    call.enqueue(new Callback<Position>() {
                        @Override
                        public void onResponse(Call<Position> call, Response<Position> response) {
                            if (!response.isSuccessful()) {
                                Log.d(TAG, String.valueOf(response.code()));
                                return;
                            }
                            Log.d(TAG, response.body().toString());
                        }

                        @Override
                        public void onFailure(Call<Position> call, Throwable t) {
                            Log.d(TAG, t.toString());
                        }
                    });
                }
            }
        });

    }

    public void loadData(){
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences(SHARED_PREFS,MODE_PRIVATE);
        token = sharedPreferences.getString(TOKEN,"");
        phone = sharedPreferences.getString(PHONE,"");

    }



}
