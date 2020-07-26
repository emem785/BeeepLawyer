import 'dart:async';
import 'dart:io';

import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserLocationInterface)
class UserLocationImpl implements UserLocationInterface {
  final Geolocator geolocator;

  UserLocationImpl({@required this.geolocator});

  @override
  Future<Location> getLocation() async {
    final position = await geolocator.getCurrentPosition();
    return Location(latitude: position.latitude, longitude: position.longitude);
  }

  @override
  Stream<Location> getUserLocationStream() {
    return geolocator
        .getPositionStream()
        .map((event) =>
            Location(latitude: event.latitude, longitude: event.longitude))
        .asBroadcastStream();
  }

  @override
  Future<String> getAddressFromLocation() async {
    final location = await getLocation();
    final placemark = await geolocator.placemarkFromCoordinates(
        location.latitude, location.longitude);
    final address =
        "${placemark[0].name},${placemark[0].locality},${placemark[0].administrativeArea}";
    return address;
  }

  @override
  Future<String> getBuddyAddressFromLocation(Location location) async {
    final placemark = await geolocator.placemarkFromCoordinates(
        location.latitude, location.longitude);
    final address =
        "${placemark[0].name},${placemark[0].locality},${placemark[0].administrativeArea}";
    return address;
  }

  @override
  startLawyerOnCallSession() async {
    if (Platform.isAndroid) {
      MethodChannel methodChannel = MethodChannel("Flutter2Android");
      var data = await methodChannel.invokeMethod(
        "startService",
        // {"title": title, "content": content},
      );
      print(data);
    }
  }

  @override
  stopLawyerOnCallSession() async {
    if (Platform.isAndroid) {
      MethodChannel methodChannel = MethodChannel("Flutter2Android");
      var data = await methodChannel.invokeMethod("stopService");
      print(data);
    }
  }
}
