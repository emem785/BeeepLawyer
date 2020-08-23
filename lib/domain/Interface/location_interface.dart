import 'dart:async';

import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:dartz/dartz.dart';

abstract class UserLocationInterface {
  Stream<Location> getUserLocationStream();
  Future<Location> getLocation();
  Future<Either<Failure,String>> getAddressFromLocation();
  Future<String> getBuddyAddressFromLocation(Location location);
  startLawyerOnCallSession();
  stopLawyerOnCallSession();
}
