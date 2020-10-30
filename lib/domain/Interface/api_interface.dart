import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:beep_lawyer_3/infrastructure/models/lawyers.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:beep_lawyer_3/infrastructure/models/map_tools.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class ApiInterface {
  //Authentication
  Future<Either<Failure, bool>> registerUser({User user, String password});

  Future<Either<Failure, Map<String,dynamic>>> signIn(String phoneNumber, String password);
  Future<Either<Failure, String>> getVerifyCode(String phoneNumber);

  Future<Either<Failure, Map<String,dynamic>>> mobileVerify(String phoneNumber, String code);
  //Modify user details
  Future<Either<Failure, Map<String,dynamic>>> updateUser(User user);
  Future<Either<Failure, bool>> updateFirebaseKey(FirebaseMessaging firebaseMessaging);
  Future<Either<Failure, bool>> updatePassword(String password);
  Future<Either<Failure, bool>> setPlan(int plan);
  //Location
  Future<Either<Failure, bool>> startOnCall(String onCall);
  Future<Either<Failure, bool>> sendLocation(double latitude, double longitude);
  StreamSubscription<Location> sendLocationAsStream(Stream<Location> locationStream);
  Stream<Location> getLocation(String phoneNumber);
}
