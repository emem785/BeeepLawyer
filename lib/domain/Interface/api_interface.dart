import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/infrastructure/models/buddy.dart';
import 'package:beep_lawyer2/infrastructure/models/lawyers.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:beep_lawyer2/infrastructure/models/map_tools.dart';
import 'package:beep_lawyer2/infrastructure/models/user.dart';
import 'package:dartz/dartz.dart';

abstract class ApiInterface {
  //Authentication
  Future<Either<Failure, bool>> registerUser({User user, String password});

  Future<Either<Failure, Map<String,dynamic>>> signIn(String phoneNumber, String password);
  Future<Either<Failure, String>> getVerifyCode(String phoneNumber);

  Future<Either<Failure, Map<String,dynamic>>> mobileVerify(String phoneNumber, String code);
  //Modify user details
  Future<Either<Failure, Map<String,dynamic>>> updateUser(User user);
  Future<Either<Failure, bool>> updatePassword(String password);
  Future<Either<Failure, bool>> setPlan(int plan);
  //Location
  Future<Either<Failure, bool>> beep(String action, Location position);
  Future<Either<Failure, bool>> sendLocation(double latitude, double longitude);
  StreamSubscription<Location> sendLocationAsStream(Stream<Location> locationStream);
  Stream<Location> getLocation(String phoneNumber);
}
