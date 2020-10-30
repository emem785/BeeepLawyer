package com.example.beep_lawyer_3;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;

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

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
    private Intent forService;
    public static final String CHANNEL = "Flutter2Android";
    public static final String CHANNEL2 = "rest";
    private String token;
    private String phone;
    public static final String TAG_UPLOAD_WORKER = "UploadWorker";
    public static final String NAME_UPLOAD_WORKER = "CurrentUploadWorker";
    PeriodicWorkRequest periodicUploadWork;

    public static final String SHARED_PREFS = "Shared_prefs";
    public static final String TOKEN = "user_token";
    public static final String PHONE = "phone_number";





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
                            phone = call.argument("phone");
                            token = call.argument("token");
                            if(call.method.equals("startService")){
                                startService(token,phone);
                                result.success("Service began");
                            }
                            if(call.method.equals("stopService")){
                                stopService();
                                result.success("Service Stopped");
                            }

                        })
                );


    }

    private void startService(String token, String phone){

        saveData(token,phone);

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
        deleteData();
        WorkManager.getInstance(this).cancelAllWorkByTag(TAG_UPLOAD_WORKER);
    }

    private void saveData(String token,String phone){
        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS,MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();

        editor.putString(TOKEN,token);
        editor.putString(PHONE,phone);

        editor.commit();
    }

    private void deleteData(){
        SharedPreferences sharedPreferences = getSharedPreferences(SHARED_PREFS,MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();

        editor.remove(TOKEN);
        editor.remove(PHONE);
        editor.commit();
    }
}
