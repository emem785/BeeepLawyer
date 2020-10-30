import 'package:beep_lawyer_3/core/utils/StyleGuide.dart';
import 'package:beep_lawyer_3/domain/Interface/location_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/alert.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:beep_lawyer_3/infrastructure/repositories/user_location_impl.dart';
import 'package:beep_lawyer_3/injectable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

FirebaseMessaging useFirebaseMessagingHook() => use(_FirebaseMessagingHook());

class _FirebaseMessagingHook extends Hook<FirebaseMessaging> {
  // final UserLocationInterface userLocationInterface;
  // FirebaseMessagingHook({@required this.userLocationInterface});

  @override
  _FirebaseMessagingHookState createState() => _FirebaseMessagingHookState();
}

class _FirebaseMessagingHookState
    extends HookState<FirebaseMessaging, _FirebaseMessagingHook> {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  static Future<dynamic> myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  @override
  void initHook() {
    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("$message");

        createDialogue(context, message);
      },
      onBackgroundMessage: myBackgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        // _navigateToItemDetail(message);
        createDialogue(context, message);
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        // _navigateToItemDetail(message);
        createDialogue(context, message);
      },
    );
    print("init");
  }

  Future<void> createDialogue(
      BuildContext context, Map<String, dynamic> message) async {
    final distance = await getDistanceBetween(message);
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('New beep Alert', style: nunitoMid),
        content: Container(
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('name: ${message["data"]["name"]}', style: nunitoMid),
              Text('distance: $distance meters away ', style: nunitoMid),
            ],
          ),
        ),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: new Text('NO', style: nunitoMidPromptPink),
          ),
          new FlatButton(
            onPressed: () {
              // Navigator.of(context).pop();
              Navigator.pushNamed(context, '/ReceiveBeep',
                  arguments: {"buddy": messageToBuddy(message)});
            },
            child: new Text('YES', style: nunitoMidPrompt),
          ),
        ],
      ),
    );
  }

  @override
  FirebaseMessaging build(BuildContext context) => firebaseMessaging;

  Future<double> getDistanceBetween(Map<String, dynamic> message) async {
    final geolocator = Geolocator();
    final userLocation = await geolocator.getCurrentPosition();
    final distance = geolocator.distanceBetween(
        double.parse(message["data"]["lat"]),
        double.parse(message["data"]["lng"]),
        userLocation.latitude,
        userLocation.longitude);
    return distance;
  }

  Buddy messageToBuddy(Map<String, dynamic> message) {
    return Buddy(
        firstname: message["data"]["firstname"],
        lastname: message["data"]["lastname"],
        phonenumber: message["data"]["phone"]);
  }
}
