package com.example.beep_lawyer_3;

import com.google.firebase.messaging.FirebaseMessaging;

import io.flutter.app.FlutterApplication;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin;
import io.flutter.plugins.firebasemessaging.FlutterFirebaseMessagingService;


public class Application extends FlutterApplication implements PluginRegistry.PluginRegistrantCallback {
    @Override
    public void registerWith(PluginRegistry registry) {
        FirebaseMessagingPlugin.registerWith(registry.registrarFor("io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin"));

    }

    @Override
    public void onCreate() {
        FlutterFirebaseMessagingService.setPluginRegistrant(this);
        super.onCreate();
    }
}
