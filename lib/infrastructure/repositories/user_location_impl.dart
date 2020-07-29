import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserLocationInterface)
class UserLocationImpl implements UserLocationInterface {
  final Geolocator geolocator;
  final LocalStorageInterface localStorageInterface;

  UserLocationImpl(
      {@required this.localStorageInterface, @required this.geolocator});

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
  Future<Either<Failure, String>> getAddressFromLocation() async {
    try {
      final location = await getLocation();
      final placemark = await geolocator.placemarkFromCoordinates(
          location.latitude, location.longitude);
      final address =
          "${placemark[0].name},${placemark[0].locality},${placemark[0].administrativeArea}";
      return Right(address);
    } catch (e) {
      return Left(ServerFailure("Location not gotten"));
    }
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
    final token = await localStorageInterface
        .getToken()
        .then((value) => value.fold((l) => null, (r) => jsonDecode(r)));
    final phone = await localStorageInterface.getPhoneNumber();
    MethodChannel methodChannel = MethodChannel("Flutter2Android");
    var data = await methodChannel.invokeMethod(
      "startService",
      {"phone": phone, "token": token},
    );
    print(data);
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
