import 'dart:async';

<<<<<<< HEAD
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
=======
import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:dartz/dartz.dart';

abstract class UserLocationInterface {
  Stream<Location> getUserLocationStream();
  Future<Location> getLocation();
<<<<<<< HEAD
  Future<double> getDistanceBetweenLocation(Location civilianLocation);
  Future<Either<Failure, String>> getAddressFromLocation();
  Future<Either<Failure, String>> getBuddyAddressFromLocation(
      Location location);
=======
  Future<Either<Failure,String>> getAddressFromLocation();
  Future<String> getBuddyAddressFromLocation(Location location);
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  startLawyerOnCallSession();
  stopLawyerOnCallSession();
}
