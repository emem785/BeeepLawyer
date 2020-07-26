package com.example.beep_lawyer2;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;

import java.lang.reflect.Array;
import java.util.concurrent.TimeUnit;

import io.flutter.Log;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {
    private Intent forService;
    public static final String CHANNEL = "Flutter2Android";
    public static final String CHANNEL2 = "rest";
    private String title;
    private String content;
    public static final String TAG_UPLOAD_WORKER = "UploadWorker";
    public static final String NAME_UPLOAD_WORKER = "CurrentUploadWorker";
    PeriodicWorkRequest periodicUploadWork;

    public static final String SHARED_PREFS = "Shared_prefs";
    public static final String TOKEN = "token";
    public static final String PHONE = "phone";



    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(),CHANNEL)
                .setMethodCallHandler(
                        ((call, result) -> {
                            title = call.argument("title");
                            content = call.argument("content");
                            if(call.method.equals("startService")){
                                startService();
                                result.success("Service began");
                            }
                            if(call.method.equals("stopService")){
                                stopService();
                                result.success("Service Stopped");
                            }

                        })
                );


    }

    private void startService(){

        saveData("ee_-G2vX_lU5piwOWdZ4UUjSG0gWe_MQvUj5vomiMDQ5vhunqzDpsA","08011111111");


        Constraints constraints = new Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build();


        PeriodicWorkRequest periodicUploadWork = new PeriodicWorkRequest.Builder(UploadWorker.class,15, TimeUnit.MINUTES)
                .addTag(TAG_UPLOAD_WORKER)
                .setConstraints(constraints)
                .setBackoffCriteria(BackoffPolicy.LINEAR,PeriodicWorkRequest.MAX_BACKOFF_MILLIS, TimeUnit.MILLISECONDS)
                .build();

        WorkManager.getInstance(this).enqueueUniquePeriodicWork(
                NAME_UPLOAD_WORKER,
                ExistingPeriodicWorkPolicy.KEEP,
                periodicUploadWork
        );



    }

    private void stopService(){
        WorkManager.getInstance(this).cancelAllWorkByTag(TAG_UPLOAD_WORKER);
    }

    private void saveData(String token,String phone){
        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS,MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();

        editor.putString(TOKEN,token);
        editor.putString(PHONE,phone);



    }


}
