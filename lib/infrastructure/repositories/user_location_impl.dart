import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/location_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoder/geocoder.dart';
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
      final addresses = await Geocoder.local.findAddressesFromCoordinates(
          Coordinates(location.latitude, location.longitude));
      final address = addresses.first;
      return Right(address.addressLine);
    } catch (e) {
      return Left(ServerFailure("Location not gotten"));
    }
  }

  @override
  Future<Either<Failure, String>> getBuddyAddressFromLocation(
      Location location) async {
    try {
      final addresses = await Geocoder.local.findAddressesFromCoordinates(
          Coordinates(location.latitude, location.longitude));
      final address = addresses.first;
      return Right(address.addressLine);
    } catch (e) {
      return Left(ServerFailure("Location not gotten"));
    }
    ;
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

  @override
  Future<double> getDistanceBetweenLocation(Location civilianLocation) async {
    final userLocation = await getLocation();
    final distance = geolocator.distanceBetween(
        civilianLocation.latitude,
        civilianLocation.longitude,
        userLocation.latitude,
        userLocation.longitude);
    return distance;
  }
}
