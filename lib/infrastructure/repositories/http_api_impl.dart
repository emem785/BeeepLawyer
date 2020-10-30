import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/network_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:beep_lawyer_3/infrastructure/models/lawyers.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

const USER_KEY = 'user';
const TOKEN_KEY = 'token';

const API_LOCATION_UPDATE_DELAY = 7;
const API_LOCATION_REQUEST_DELAY = 7;

@LazySingleton(as: ApiInterface)
class HttpApiImpl implements ApiInterface {
  final LocalStorageInterface localStorageRepo;
  final NetworkInterface client;
  StreamSubscription<Location> _subscription;

  HttpApiImpl({@required this.localStorageRepo, @required this.client});

  //Authentication
  @override
  Future<Either<Failure, bool>> registerUser(
      {User user, String password}) async {
    final body = {
      "firstname": user.firstname,
      "lastname": user.lastname,
      "email": user.email,
      "phone": user.phone,
      "twitter_handle": user.twitterHandle,
      "password": password
    };
    final response =
        await client.post(endPoint: "mobile_register_lawyer", body: body);
    return response.fold((l) => Left(l), (r) => Right(true));
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> signIn(
      String phoneNumber, String password) async {
    final body = {"phone": phoneNumber, "password": password};
    final response = await client.post(endPoint: "mobile_signin", body: body);
    return response.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<Failure, String>> getVerifyCode(String phoneNumber) async {
    final response = await client.get("get_verification_code", phoneNumber);
    return response.fold(
        (l) => Left(l),
        (r) => Right(
            r["response"]["content"]["verification_code"]["code"].toString()));
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> mobileVerify(
      String phoneNumber, String vcode) async {
    final body = {"phone": phoneNumber, "code": vcode};
    final response =
        await client.post(endPoint: "mobile_verify_code", body: body);
    return response.fold((l) => Left(l), (r) => Right(r));
  }

  //Modify User Details

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateUser(User user) async {
    final body = {
      "firstname": user.firstname,
      "lastname": user.lastname,
      "phone": user.phone,
      "email": user.email,
      "twitter_handle": user.twitterHandle
    };

    final response =
        await client.postAuth(endpoint: "update_details", body: body);
    return response.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<Failure, bool>> updatePassword(String password) async {
    final body = {"password": password};
    final response =
        await client.postAuth(endpoint: "update_details", body: body);
    return response.fold((l) => Left(l), (r) => Right(true));
  }

  @override
  Future<Either<Failure, bool>> setPlan(int plan) async {
    final body = {"plan": plan};
    final response =
        await client.postAuth(endpoint: "update_details", body: body);
    return response.fold((l) => Left(l), (r) => Right(true));
  }

//Location
  @override
  Future<Either<Failure, bool>> startOnCall(String onCall) async {
    final body = {"on_call": onCall};
    final response =
        await client.postAuth(endpoint: "update_details", body: body);
    return response.fold((l) => Left(l), (r) => Right(true));
  }

  @override
  Future<Either<Failure, bool>> sendLocation(
      double latitude, double longitude) async {
    final body = {
      "longitude": longitude.toString(),
      "latitude": latitude.toString(),
      "user_type": "lawyer"
    };
    final response =
        await client.postAuth(endpoint: "add_location", body: body);
    return response.fold((l) => Left(l), (r) => Right(true));
  }

  @override
  StreamSubscription<Location> sendLocationAsStream(
      Stream<Location> locationStream) {
    _subscription = locationStream.listen((event) {
      sendLocation(event.latitude, event.longitude);
      _subscription.pause(
          Future.delayed(const Duration(seconds: API_LOCATION_UPDATE_DELAY)));
    });
    return _subscription;
  }

  @override
  Stream<Location> getLocation(String phoneNumber) async* {
    while (true) {
      await Future.delayed(const Duration(seconds: API_LOCATION_REQUEST_DELAY));
      final response = await client.getAuth("get_user_location", phoneNumber);
      yield* response.fold((l) async* {
        yield Location(latitude: 0, longitude: 0);
      }, (r) async* {
        final location =
            r["response"]["content"]["details"]["target_user_location"];

        yield Location(latitude: location["lat"], longitude: location["lng"]);
      });
    }
  }

  @override
  Future<Either<Failure, bool>> updateFirebaseKey(
      FirebaseMessaging firebaseMessaging) async {
    final firebaseKey = await firebaseMessaging.getToken();
    print(firebaseKey);
    final body = {"firebase_key": firebaseKey};
    final response =
        await client.postAuth(endpoint: "update_details", body: body);

    return response.fold((l) => Left(l), (r) => Right(true));
  }
}
